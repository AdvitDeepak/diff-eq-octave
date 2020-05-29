clear 
clc 
format long 

% ODE: y' = sin(2x) - y * tan(x) 
func = @(x,y) sin(2 * x) - (y * tan(x)); 
RungeKutta(func, 0, 1, 1, 62)

% Solving the linear ODE give us y = cos(x) * (3 - 2cos(x))
% Using this equation, y(1) = 1.03705375 (graphing calculator) 

% Interval trials: 
%   10 --> 1.03704761
%   20 --> 1.03705338
%   30 --> 1.03705368
%   40 --> 1.03705373
%   50 --> 1.03705374
%   60 --> 1.03705374

%   62 --> 1.03705375

% Thus, it required 62 intervals to get an answer with the 
% accuracy of eight decimal points.    
