% Joel Villarreal
% The function to find the root of, and its first derivative

function [y, yprime] = distFunction(x) 
y = 4 * x ^ 3 + 2 * x - 2;
yprime = 12 * x ^ 2 + 2;
end