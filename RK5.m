function y = RK5(f, x0, y0, x1, num_intervals)
  h = (x1 - x0)/num_intervals; 
  x = x0; 
  y = y0; 
  
  # Vector of h constants (for readability) 
  hV = [0 1/4 3/8 12/13 1 1/2]; 
  
  # Vectors for k constants (for readability) 
  kR1 = [1/4]; 
  kR2 = [3/32 9/32]; 
  kR3 = [1932/2197 -7200/2197 7296/2197]; 
  kR4 = [439/216 -8 3680/513 -845/4104]; 
  kR5 = [-8/27 2 -3544/2565 1859/4104 -11/40]; 
  
  # Vector of m constants (for readability) 
  mV = [16/135 0 6656/12825 28561/56430 -9/50 2/55]; 
  
  for n=1:num_intervals
    k1 = f(x .+ h*hV(1), y); 
    k2 = f(x .+ h*hV(2), y .+ h * ([k1] * kR1')); 
    k3 = f(x .+ h*hV(3), y .+ h * ([k1 k2] * kR2'));   
    k4 = f(x .+ h*hV(4), y .+ h * ([k1 k2 k3] * kR3'));   
    k5 = f(x .+ h*hV(5), y .+ h * ([k1 k2 k3 k4] * kR4')); 
    k6 = f(x .+ h*hV(6), y .+ h * ([k1 k2 k3 k4 k5] * kR5')); 
    
    m = [k1 k2 k3 k4 k5 k6] * mV'; 
    y = y .+ h * m;
    x = x .+ h; 
  end 
  
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

% RK4(@(x,y) [0 1; 0 -1] * y + [x-x^2; -x+2*x^2], 0, [1; 0], 1, num_steps)
% RK5(@(x,y) [0 1; 0 -1] * y + [x-x^2; -x+2*x^2], 0, [1; 0], 1, num_steps)

% Actual solution: y1= 1.172730539190545e+00 | y2= 1.606027941427883e-01

%    Accuracy       | RK4 | RK5 
% 4th decimal place |   5 |  2 
% 5th decimal place |  12 |  3 
% 6th decimal place |  12 |  6 
% 7th decimal place |  24 | 11
% 8th decimal place |  34 | 31 
% 9th decimal place |  88 | 31

