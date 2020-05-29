% IVP: 2y1'+ y2'-y2 = x
%      y1'+ y2' = x^2
       
%      y1(0) = 1 | y2(0) = 0 

% Convert to form Y' = A * Y + B: 
% Re-expressing both, we get 
%   2y1' + y2' = y2 + x 
%   y1' + y2' = x^2

% Subtracting, we get 
%   y1' = y2 + x - x^2

% Re-expresing y1' + y2' = x^2, we get 
%   y2' = x^2 - y1' 
%       = x^2 - (y2 + x - x^2)
%       = -y2 - x + 2 x^2

% Thus, we get: 
%   y1' = 0y1 + y2 + (x - x^2)
%   y2' = 0y1 - y2 + (-x + 2*x^2) 

% Y' = [0 1; 0 -1] * Y + [x-x^2; -x+2*x^2]
% Y(0) = [1; 0]

format long 
RK4(@(x,y) [0 1; 0 -1] * y + [x-x^2; -x+2*x^2], 0, [1; 0], 1, 100)


% RK4 Solution: Y(1) = 1.172731 | 0.160603

% Our Solution: y1(x) = 5e^-x - 4 + 5x - 2x^2 + (1/3)x^3
%               y2(x) = -5e^-x + 5 - 5x + 2x^2

%               Y(1) = 1.172731 | 0.160603

% Thus, both solutions are the same to at least 6 decimal points. 