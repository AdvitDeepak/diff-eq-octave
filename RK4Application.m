% IVP:  y'' - y' - 2y = 4 t^2, y(0) = 1, y'(0) = 4

% Convert to system of first order ODEs: 
% Let y1 = y, y1' = y' 
% Let y2 = y', y2' = y''

% y1' = y' 
%     = y2
 
% y2' = y'' = y' + 2y + 4 t^2 
%     = y2 + 2y1 + 4*t^2  

% y1' = 0y1 + y2 + 0
% y2' = 2y1 + y2 + 4*t^2

% Y' = [0 1; 2 1] * Y + [0; 4*t^2]
% Y(0) = [1; 4]

format long 
RK4(@(t,y) [0 1; 2 1] * y + [0; 4*t^2], 0, [1; 4], 1, 100)

% Our answer will be the value of y1, or the first number in the solution. 
% y2 = y', meaning we can disregard its value since we do not care for y'(1)

% RK4 Solution: y(1) = 12.513871

% Our Solution: y(t) = -3 + 2t - 2t^2 + 2e^-t + 2e^2t 
%               y(1) = 12.513871 

% Thus, both solutions are the same to at least 6 decimal points. 