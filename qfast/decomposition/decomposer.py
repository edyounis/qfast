import numpy as np
import itertools as it

from .gate import Gate
from .topology import Topology

from .utils import is_unitary, closest_unitary
from .models import *
from .optimizers import *

import logging
logger = logging.getLogger( "qfast" )

import importlib
import pkgutil


import qfast.models as models
import qfast.optimizers as optimizers


_discovered_models = {
    name: importlib.import_module( name )
    for finder, name, ispkg
    in pkgutil.iter_modules( models.__path__, models.__name__ + "." )
}

_discovered_optimizers = {

print( _discovered_models )

class Decomposer():

    def __init__ ( self, utry, target_gate_size = 2, model = "softpauli",
                   hierarchy_fn = lambda x : x // 2 if x > 3 else 2,
                   coupling_map = None ):

        if not is_unitary( utry, tol = 1e-15 ):
            logger.warning( "Unitary inputted is not a unitary upto double precision." )
            logger.warning( "Proceeding with closest unitary to input." )
            self.utry = closest_unitary( utry )
        else:
            self.utry = utry

        self.target_gate_size = target_gate_size
        self.hierarchy_fn = hierarchy_fn
        self.num_qubits = int( np.log2( len( utry ) ) )
        self.topology = Topology( self.num_qubits, coupling_map )

        self.gate_list = []

        if model == "softpauli":
            self.model = SoftPauliModel
        elif model == "perm":
            self.model = PermModel

    def get_utry ( self ):
        return self.utry

    def get_target_gate_size ( self ):
        return self.target_gate_size

    def get_model ( self ):
        return self.model

    def get_hierarchy_fn ( self ):
        return self.hierarchy_fn

    def set_target_gate_size ( self, target_gate_size ):
        self.target_gate_size = target_gate_size

    def set_model ( self, model ):
        self.model = model

    def set_hierarchy_fn ( self, hierarchy_fn ):
        self.hierarchy_fn = hierarchy_fn

    def get_gate_list ( self ):
        if len( self.gate_list ) == 0:
            raise RuntimeError( "Unitay has not been decomposed. "
                                "Use Decomposer.decompose()" )

        return self.gate_list

    def decompose ( self ):
        if len( self.gate_list ) == 0:
            self.gate_list.append( Gate( self.utry, tuple( range( self.num_qubits ) ) ) )

        while any( [ gate.get_size() > self.target_gate_size
                     for gate in self.gate_list ] ):

            new_gate_list = []

            for gate in self.gate_list:

                if gate.get_size() <= self.target_gate_size:
                    new_gate_list.append( gate )
                else:
                    next_gate_size = self.hierarchy_fn( gate.get_size() )
                    t = self.topology.get_locations( next_gate_size )
                    m = self.model( self.utry, next_gate_size, t, LFBGSOptimizer() )
                    new_gate_list += m.solve()

            self.gate_list = new_gate_list

        return self.gate_list