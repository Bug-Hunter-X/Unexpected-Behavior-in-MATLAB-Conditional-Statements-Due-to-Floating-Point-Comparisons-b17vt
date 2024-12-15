# MATLAB Floating-Point Comparison Bug

This repository demonstrates a subtle bug in MATLAB code that arises from implicit type conversion and the limitations of floating-point arithmetic when used in conditional statements.

The `bug.m` file contains a function `myFunction` that exhibits unexpected behavior due to the comparison of floating-point numbers.  The `bugSolution.m` file provides a corrected version that addresses this issue using a tolerance-based comparison.

## Bug Description

The core problem lies in the comparison `input > 10`.  Due to the inherent imprecision of floating-point representation, a value that might appear to be 10 (e.g., 10.00000000000001) could lead to different outcomes in the conditional statement.  This can be particularly insidious when dealing with input values from external sources or calculations with rounding errors.

## Solution

The solution employs a tolerance to handle the imprecision of floating-point numbers. Instead of checking for exact equality or inequality, it checks if the difference between the input and 10 is within a defined tolerance level.