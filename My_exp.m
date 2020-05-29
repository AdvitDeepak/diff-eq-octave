function sum = My_exp(x)
  sum = 0; 

  for n=0:100 % For larger x values, a greater n is needed! 
    sum = sum + (x^n)/(factorial(n)); 
  end 
