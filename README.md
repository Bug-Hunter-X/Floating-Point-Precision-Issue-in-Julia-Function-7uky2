# Floating-Point Precision Bug in Julia
This repository demonstrates a subtle bug related to floating-point precision in a simple Julia function. The function squares positive numbers and negates the square of negative numbers. However, due to limitations in floating-point representation, unexpected behavior occurs for numbers extremely close to zero.

## Description
The `my_function` in `bug.jl` calculates the square of its input. If the input is positive, it returns the square; if negative, it returns the negative of the square.  However, when the input is a floating-point number extremely close to zero, the result may be incorrectly rounded to zero due to the limitations of floating-point precision.

## Solution
The `bugSolution.jl` file offers a solution by employing a more robust approach that checks whether the absolute value of the input is below a certain tolerance to handle the floating-point precision issues more gracefully.