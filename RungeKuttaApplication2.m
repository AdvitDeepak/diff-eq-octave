clear 
clc 
format long 

% ------------------------- Prob 1 -------------------------------

% ODE: y' = y^2 - y
func1 = @(x,y) y^2 - y; 
RungeKutta(func1, 0, -1/3, 1/2, 12)

% Solving the ODE give us y = 1/(1 - 4 * e^x)
% Using this equation, y(0.5) = -0.17873468 (graphing calculator) 

% Interval trials: 
%   10 --> -0.17873469
%   11 --> -0.17873469
%   12 --> -0.17873468

% Thus, 12 intervals to get an aaccuracy of eight decimal points.    

% ------------------------- Prob 2 -------------------------------

% ODE: y' = x(y)^-1 - xy; 
func2 = @(x,y) x * (y)^-1 - x * y; 
RungeKutta(func2, 0, 3, 1/2, 11)

% Solving the ODE give us y = (8 * e^(-x^2) + 1)^0.5
% Using this equation, y(0.5) = 2.68894147 (graphing calculator) 

% Interval trials: 
%   10 --> 2.68894148
%   11 --> 2.68894147

% Thus, 11 intervals to get an aaccuracy of eight decimal points.  

% ------------------------- Prob 3 -------------------------------

% ODE: y' = tan(y)/(x - 1)
func3 = @(x,y) tan(y)/(x - 1); 
RungeKutta(func3, 0, pi/4, 1/2, 16)

% Solving the linear ODE give us y = arcsin((1-x)/2^0.5)
% Using this equation, y(0.5) = 0.36136712 (graphing calculator) 

% Interval trials: 
%   10 --> 0.36136717
%   15 --> 0.36136713
%   16 --> 0.36136713
%   17 --> 0.36136712

% Thus, 17 intervals to get an aaccuracy of eight decimal points.  
