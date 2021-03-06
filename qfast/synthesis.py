"""This module implements a basic synthesize function."""

from qfast import Decomposer, Instantiater, Combiner, plugins, utils
from qfast.topology import Topology

def synthesize ( utry, model = "PermModel", optimizer = "LBFGSOptimizer",
                 tool = "QSearchTool", combiner = "NaiveCombiner",
                 hierarchy_fn = lambda x : x // 3 if x > 5 else 2,
                 coupling_graph = None, basis_gates = None,
                 intermediate_solution_callback = None, model_options = {} ):
    """
    Synthesize a unitary matrix and return qasm code using QFAST.

    Args:
        utry (np.ndarray): The unitary matrix to synthesize.

        model (str): The model to use during decomposition.

        optimizer (str): The optimizer to use during decomposition.

        tool (str): The native tool to use during instantiation.

        combiner (str): The combiner to use during recombination.

        hierarchy_fn (callable): This function determines the
            decomposition hierarchy.

        coupling_graph (None or list[tuple[int]]): Determines the
            connection of qubits. If none, will be set to all-to-all.

        basis_gates (None or list[str]): Determines the gate set
            for the final circuit. Only works with tools that implement
            this feature.

        intermediate_solution_callback (None or callable): Callback
            function for intermediate solutions. If not None, then
            a function that takes in a list[Gates] and returns nothing.

        model_options (Dict): kwargs for model

    Returns:
        (str): Qasm code implementing utry.

    Raises:
        TypeError: If the coupling_graph is invalid.

        RuntimeError: If the native tool cannot be found.
    """

    if coupling_graph is not None:
        if not utils.is_valid_coupling_graph( coupling_graph ):
            raise TypeError( "The specified coupling graph is invalid." )


    if combiner not in plugins.get_combiners():
        raise RuntimeError( "Cannot find combiner." )

    # Get target_gate_size for decomposition
    if tool not in plugins.get_native_tools():
        raise RuntimeError( "Cannot find native tool." )

    target_gate_size = plugins.get_native_tool( tool )().get_maximum_size()

    num_qubits = utils.get_num_qubits( utry )
    topology = Topology( num_qubits, coupling_graph )

    # Decompose the big input unitary into smaller unitary gates.
    decomposer = Decomposer( utry, target_gate_size = target_gate_size,
                             model = model,
                             optimizer = optimizer,
                             topology = topology,
                             hierarchy_fn = hierarchy_fn,
                             intermediate_solution_callback = intermediate_solution_callback,
                             model_options = model_options )

    gate_list = decomposer.decompose()

    # Instantiate the small unitary gates into native code
    instantiater = Instantiater( tool, topology, basis_gates = basis_gates )
    qasm_list = instantiater.instantiate( gate_list )

    # Recombine all small circuits into one large output
    combiner = plugins.get_combiner( combiner )()
    qasm_out = combiner.combine( qasm_list )

    return qasm_out

