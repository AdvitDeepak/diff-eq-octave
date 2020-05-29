clear
clc 
format long 

% ------------------------- Prob 1 -------------------------------

fprintf("---------- Problem 1 ---------- \n\n");
% URL: https://www.youtube.com/watch?v=fP9Tg47Asw4

A = [1 1 4; 0 2 0; 1 1 1];
Y = [1; 3; 0]; % At x = 0

% Video Sol: -0.5*[-2;0;1]*exp(-x) - 1*[5;-3;2]*exp(2x) + 5/2*[2;0;1]*exp(3x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [63.85; 22.16; 35.25]
 
fprintf("Our solution: \n\n"); 
tic 
sysODE(A, Y, 0, 1)
toc 

fprintf("\nOde45 solution: \n\n"); 
tic 
[t,y] = ode45(@(t, y) A * y, [0 1], Y); 
y(length(y),:)'
toc

% Our function: 0.0011 sec
% Ode45 function: 0.0243 sec

% ------------------------- Prob 2 -------------------------------

fprintf("\n---------- Problem 2 ---------- \n\n"); 
% URL: https://www.youtube.com/watch?v=W3J7BfujwA4

A = [4 -5; 2 -3]; 
Y = [8; 5]; % At x = 0

% Video Sol: 3*[1;1]*exp(-x) + [5;2]*exp(2x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [38.04; 15.88]

fprintf("Our solution: \n\n"); 
tic
sysODE(A, Y, 0, 1)
toc

fprintf("\nOde45 solution: \n\n"); 
tic 
[t,y] = ode45(@(t, y) A * y, [0 1], Y); 
y(length(y),:)'
toc

% Our function: 0.0008 sec
% Ode45 function: 0.0239 sec

% ------------------------- Prob 3 -------------------------------

fprintf("\n---------- Problem 3 ---------- \n\n"); 
% URL: https://www.youtube.com/watch?v=wUVl-YsxX-A

% Initial Value Problem
A = [5 -1; 3 1];
Y = [2; -1]; % At x = 0

% Video Sol: -1.5*[1;3]*exp(2x) + 3.5*[1;1]*exp(4x)

% The video's solution evaluated with a graphing calculator:  
%     @ x = 1: [180.00; 157.84]

fprintf("Our solution: \n\n"); 
tic
sysODE(A, Y, 0, 1)
toc 

fprintf("\nOde45 solution: \n\n"); 
tic 
[t,y] = ode45(@(t, y) A * y, [0 1], Y); 
y(length(y),:)'
toc

% Our function: 0.0009 sec
% Ode45 function: 0.0252 sec