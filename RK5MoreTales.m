A = [1 1 4; 0 2 0; 1 1 1]; 
y0 = [1; 3; 0]; 

format long 
num_steps = 170; 

fprintf("RK4 Solution: "); 
RK4(@(x, y) A * y, 0, y0, 1, num_steps)
fprintf("RK5 Solution: "); 
RK5(@(x, y) A * y, 0, y0, 1, num_steps)

% Actual solution: 
%   y1 = 63.85028356245653
%   y2 = 22.16716829679195
%   y3 = 35.25179038952215

%    Accuracy       | RK4 | RK5 
% 4th decimal place |  39 |  15
% 5th decimal place |  86 |  28
% 6th decimal place | 136 |  41
% 7th decimal place | 236 |  63
% 8th decimal place | 530 | 121
% 9th decimal place | 807 | 170 

