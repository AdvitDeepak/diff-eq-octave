function sum = cos_taylor(x)
  sum = 0; 

  % For higher values, cos_taylor is better than the Maclaurin Series 
  % for cosine. This is because the Taylor series is centered around 
  % pi/2 while the Maclaurin series is centered around 0. The difference
  % can be seen in comparing the results of the following: 
  % 
  % cos(25) = 0.99120
  % cos_taylor(25) = 0.99120
  % My_cos(25) = 0.99121
  %
  % As can be seen above, My_cos, which is the Maclaurin implementation 
  % of cosine, has less accuracy with higher x-values. 
  
  for n=0:100 
    sum = sum + ((-1)^(n + 1)/factorial(2 * n + 1)) * (x - pi/2)^(2*n + 1); 
  end 