function sum = My_sin(x)
  sum = 0; 

  for n=0:100 % For larger x values, a greater n is needed! 
    sum = sum + ((-1)^n)/factorial(2*n + 1) * x^(2*n + 1); 
  end 