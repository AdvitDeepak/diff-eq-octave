function y = euler(func, x0, y0, x1, num_intervals)
  step_size = (x1 - x0)/num_intervals; 
  x = x0; 
  y = y0; 
  
  for n=1:num_intervals
    y = y + step_size * func(x, y);
    x = x + step_size; 
  end 

% Input: euler(@(x,y) y, 0, 1, 1, 100)
% Ouput: 2.7048

% Additional note: x_curr and y_curr initially meant current x 
% and current y. However, those variable names were unneeded and
% superfluous, so they were changed to just x and y respectively. 