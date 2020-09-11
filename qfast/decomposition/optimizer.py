"""
This module defines the Optimizer abstract base class.

An optimizer is paired with a circuit model to decompose big unitaries
into smaller unitaries.

All optimizer plugins must extend this class and implement the
functionality outlined here.
"""


from abc import ABC, abstractmethod


class Optimizer ( ABC ):
    """The Optimizer abstract base class."""
    
    @abstractmethod
    def minimize_coarse ( self, objective_fn, xin ):
        """
        A coarse minimization call.

        The model should call this minimization function many times,
        as such, this function should prioritize performance.

        Args:
            objective_fn (callable): The objetive function to minimize.
                It will take in the xin input and return both a value
                and the partial derivatives:
                    objective_fn: np.ndarray -> Tuple[float, np.ndarray]

            xin (np.ndarray): The initial input to the objective
                function. The dimensionality of the function is defined
                by this.

        Returns:
            (np.ndarray): The input to the objective function that
                minimizes it.
        """
        pass

    @abstractmethod
    def minimize_fine ( self, objective_fn, xin ):
        """
        A fine minimization call.

        The model should call this minimization function a few times,
        as such, this function should prioritize accuracy.

        Args:
            objective_fn (callable): The objetive function to minimize.
                It will take in the xin input and return both a value
                and the partial derivatives:
                    objective_fn: np.ndarray -> Tuple[float, np.ndarray]

            xin (np.ndarray): The initial input to the objective
                function. The dimensionality of the function is defined
                by this.

        Returns:
            (np.ndarray): The input to the objective function that
                minimizes it.
        """
        pass

