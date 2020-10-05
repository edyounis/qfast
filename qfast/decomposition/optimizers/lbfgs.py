"""QFAST Optimizer wrapper for scipy's L-FBGS-B optimizer."""

import scipy.optimize as opt

from qfast.decomposition.optimizer import Optimizer

class LFBGSOptimizer( Optimizer ):

    def minimize_coarse ( self, objective_fn, xin ):
        res = opt.minimize( objective_fn, xin, jac = True, method = 'L-BFGS-B' )
        return res.x

    def minimize_fine ( self, objective_fn, xin ):
        res = opt.minimize( objective_fn, xin, jac = True, method = 'L-BFGS-B', options = { 'ftol': 1e-10, 'gtol': 1e-10 } )
        return res.x

