function sum = RiemannSum(func, minX, maxX, tolerance)
  sum = 0;
  deltaX = 1/tolerance; 

  for n=minX:deltaX:maxX - deltaX
    sum = sum + func(n) * deltaX; 
  end 

end 