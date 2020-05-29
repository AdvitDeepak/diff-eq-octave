clear
clc 
format long 

% ------------------------- Prob 1 -------------------------------

% URL: https://www.youtube.com/watch?v=fP9Tg47Asw4

% Initial Value Problem
% A = [1 1 4; 0 2 0; 1 1 1] | Y(0) = [1; 3; 0]

% Video Sol: -0.5*[-2;0;1]*exp(-x) - 1*[5;-3;2]*exp(2x) + 5/2*[2;0;1]*exp(3x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [63.85; 22.16; 35.25]
%     @ x = 2: [1744.28; 163.79; 899.30]

fprintf("----- Problem 1 ----- \n\n"); 
sysODE([1 1 4; 0 2 0; 1 1 1], [1; 3; 0], 0, 1)
sysODE([1 1 4; 0 2 0; 1 1 1], [1; 3; 0], 0, 2)

% ------------------------- Prob 2 -------------------------------

% URL: https://www.youtube.com/watch?v=W3J7BfujwA4

% Initial Value Problem
% A = [4 -5; 2 -3] | Y(0) = [8; 5]

% Video Sol: 3*[1;1]*exp(-x) + [5;2]*exp(2x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [38.04; 15.88]
%     @ x = 2: [273.39; 109.60]

fprintf("----- Problem 2 ----- \n\n"); 
sysODE([4 -5; 2 -3], [8; 5], 0, 1)
sysODE([4 -5; 2 -3], [8; 5], 0, 2)

% ------------------------- Prob 3 -------------------------------

% URL: https://www.youtube.com/watch?v=wUVl-YsxX-A

% Initial Value Problem
% A = [5 -1; 3 1] | Y(0) = [2; -1]

% Video Sol: -1.5*[1;3]*exp(2x) + 3.5*[1;1]*exp(4x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [180.00; 157.84]
%     @ x = 2: [10351.45; 10187.66]

fprintf("----- Problem 3 ----- \n\n"); 
sysODE([5 -1; 3 1], [2; -1], 0, 1)
sysODE([5 -1; 3 1], [2; -1], 0, 2)