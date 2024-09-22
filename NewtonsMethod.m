% Joel Villarreal
% Script for Newton's Method
% x_(n+1) = x_(n) - f(x_n) / f'(x_n)

clc
clear
format long

n_max = 25; % The maximum number of itterations befor failure
tolerance = 0.0001; % Approximating x to within 10^(-4) 

% x_n = 1; % Initial guess of 1
x_n = 2; % Initial guess of 2

for n=1: n_max 

    [f, fPrime] = distFunction(x_n);

    x_next = x_n - f / fPrime;

    if (abs(x_next - x_n) < tolerance)
        break
    end

    x_n = x_next;
end

if (n < n_max) % successful
    display("approximate root of x: " + x_n);
else
    disp("The method failed after 25 attempts, procedure unsuccessful");
end

%% Graphical Representation

x = -0.5: 0.05: 1.5;
y = x.^2;

plot(x, y, "-");
title("y = x^2's closest point to (1,0)");
hold on;
% plot(0, 1, ".");
plot([x_n 1], [x_n ^2 0], '-*');
legend("x^2", "(0.59879, 0.34785) to (1, 0)")

