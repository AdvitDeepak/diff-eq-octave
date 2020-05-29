function y = RK4(func, x0, y0, x1, num_intervals)
  h = (x1 - x0)/num_intervals; 
  x = x0; 
  y = y0; 
  
  for n=1:num_intervals
    k1 = func(x, y); 
    k2 = func(x .+ h/2, y .+ (h/2) * k1); 
    k3 = func(x .+ h/2, y .+ (h/2) * k2); 
    k4 = func(x .+ h, y .+ h * k3); 
    
    m = (1/6) * (k1 + 2 * k2 + 2 * k3 + k4); 
    y = y .+ (h * m);
    x = x .+ h; 
  end 
  
% Check 1: A = [4 -5; 2 -3], Y(0) = [8; 5], Y(1) = ? 

% Input: RK4(@(x,y) [4 -5; 2 -3] * y, 0, [8; 5], 1, 100)
% Ouput: 38.049 | 15.882 

% Input: sysODE([4 -5; 2 -3], [8; 5], 0, 1)
% Output: 38.049 | 15.882


% Check 2: A = [1 1 4; 0 2 0; 1 1 1], Y(0) = [1; 3; 0], Y(1) = ? 

% Input: RK4(@(x,y) [1 1 4; 0 2 0; 1 1 1] * y, 0, [1; 3; 0], 1, 100)
% Ouput: 63.850 | 22.167 | 35.252

% Input: sysODE([1 1 4; 0 2 0; 1 1 1], [1; 3; 0], 0, 1)
% Output: 63.850 | 22.167 | 35.252
