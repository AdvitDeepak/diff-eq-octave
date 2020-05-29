function sum = SimpsonsRule(func, minX, maxX, tolerance)
  sum = 0; 
  deltaX = 1/tolerance; 

  for n=minX:2*deltaX:maxX - 2*deltaX
    sum = sum + (deltaX/3) * (func(n) + 4 * func(n + deltaX) + func(n + 2*deltaX)); 
  end 

end   