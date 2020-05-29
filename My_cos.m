function sum = My_cos(x)
  sum = 0; 

  for n=0:100 % For larger x values, a greater n is needed! 
    sum = sum + ((-1)^n)/factorial(2 * n) * x^(2*n); 
  end 