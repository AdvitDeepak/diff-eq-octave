clear
clc 
format long 

A =[1 1 4; 0 2 0; 1 1 1];       
y0=[1; 3; 0];  

fprintf("Ode45 solution: \n\n"); 
tic  
[x, y] = ode45 (@(x,y) A*y, [0 1], y0);  
toc
y

fprintf("Our solution: \n\n"); 
tic 
sol = sysODE(A, y0, 0, x)';
toc 
sol 

% Ode45 function: 0.018961 sec
% Our function  : 0.000437 sec

