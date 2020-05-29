function y = RungeKutta(func, x0, y0, x1, num_intervals)
  h = (x1 - x0)/num_intervals; 
  x = x0; 
  y = y0; 
  
  for n=1:num_intervals
    k1 = func(x, y); 
    k2 = func(x + h/2, y + (h/2) * k1); 
    k3 = func(x + h/2, y + (h/2) * k2); 
    k4 = func(x + h, y + h * k3); 
    
    m = (1/6) * (k1 + 2 * k2 + 2 * k3 + k4); 
    y = y + h * m;
    x = x + h; 
  end 

% Input: RungeKutta(@(x,y) y, 0, 1, 1, 100)
% Ouput: 2.7183

% The RungeKutta method is a lot more accurate than the euler
% function we previously wrote. RungeKutta gives the same
% value of 2.7183 at only 5 intervals. In contrast, euler's
% function requires 43000 intervals to give the same result. 
%
% RungeKutta(@(x,y) y, 0, 1, 1, 5) --> 2.7183
% euler(@(x,y) y, 0, 1, 1, 42500) --> 2.7182
% euler(@(x,y) y, 0, 1, 1, 43000) --> 2.7183
