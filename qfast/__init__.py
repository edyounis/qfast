
# Initialize Logging
import logging
_logger = logging.getLogger( "qfast" )
_logger.setLevel(logging.CRITICAL)
_handler = logging.StreamHandler()
_handler.setLevel( logging.DEBUG )
_fmt = "%(levelname)-8s | %(message)s (%(module)s:%(funcName)s:%(lineno)s)"
_formatter = logging.Formatter( _fmt )
_handler.setFormatter( _formatter )
_logger.addHandler( _handler )

# Initialize Plugins
modelsubclasses = {}
optimizersubclasses = {}
nativetoolsubclasses = {}
import plugins
from .decomposition.decomposer import Decomposer
from .instantiation.instantiater import Instantiater
#from .plugins import get_native_tools
from .recombination.combiner import Combiner

