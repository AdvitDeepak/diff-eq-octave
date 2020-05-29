clear 
clc 
format long 

A = [2 2; 5 -1]; 
[V L] = eig(A); 

x_initVal = 0; 
y1_initVal = 0; 
y2_initVal = 7; 

% Now we need to solve for c1, c2 

% y1 = c1 * V(1,1) * exp(L(1,1) * x) + c2 * V(1,2) * exp(L(1,2) * x)
% y2 = c1 * V(2,1) * exp(L(2,1) * x) + c2 * V(2,2) * exp(L(2,2) * x)

% This is essentially a system of two linear equations. We first use
% the initial conditions to eliminate x from the system of equations. 

c1_constant1 = V(1,1) * exp(L(1,1) * x_initVal); 
c1_constant2 = V(2,1) * exp(L(2,2) * x_initVal); 

c2_constant1 = V(1,2) * exp(L(1,1) * x_initVal); 
c2_constant2 = V(2,2) * exp(L(2,2) * x_initVal); 

% Now we have the following system: 

% y1(init_val) = c1 * c1_constant1 + c2 * c2_constant1 
% y2(init_val) = c1 * c1_constant2 + c2 * c2_constant2 

% We can solve this using matrices 

const_matrix = [c1_constant1 c2_constant1; c1_constant2 c2_constant2]; 
initVals_matrix = [y1_initVal; y2_initVal]; 

% The '\' operator allows us to find the solutions matrix 

c_sols = const_matrix\initVals_matrix; 
c1 = c_sols(1,1); 
c2 = c_sols(2,1); 

% We use the values of c1 and c2 to solve for y1 and y2 

y1 = @(x) c1 * V(1,1) * exp(L(1,1) * x) + c2 * V(1,2) * exp(L(2,2) * x);
y2 = @(x) c1 * V(2,1) * exp(L(1,1) * x) + c2 * V(2,2) * exp(L(2,2) * x);


fprintf('y1(1) = %.10d \n',y1(1))
fprintf('y2(1) = %.10d \n',y2(1))