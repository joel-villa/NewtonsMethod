#Joel Villarreal's Project 2
- This project involved minimizing distance from a function to a point, 
  utilizing Newton's Method for approximation
- The function in question is y = x^2, and the point in question is (1, 0)
- To minimize the distance we can minimize the distance squared, which is 
  convenient, because the pythagorean theorem can be used
  - [d(x)]^2 = (x-1)^2 + (x^2 - 0)^2 = x^4 + x^2 - 2x + 1 
- Minimizing this distance formula involves finding it's critical value, aka the
  root of its derivative.
  - 4x^3 + 2x - 2 = 0
- This root finding problem can be solved with Newton's Method, which is carried
  out in NewtonsMethod.m
## NewtonsMethod.m
- To execute this file, open it in Matlab, and hit the run button.
- A figure will be automatically loaded along with the estimate of the x which 
  solves the minimization problem
  - x ~ 0.58979, meaning that the point of (~0.59, ~0.35) is the closest that 
    y = x^2 gets to the point (1, 0)
  - The figure: shows the graph of y = x^2, the point (0.59, 0.35), and the 
    point (1,0), as well as a line connecting the two
- Findings: The point (0.58979, 0.34785) is the closest that the curve of 
  y = x^2 gets to the point (1, 0)
## distFunction.m
- This file contains a function which when called returns the value of f(x) and 
  f'(x) at a given input x, where f(x) = 4x^3 + 2x - 2