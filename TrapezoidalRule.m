function sum = TrapezoidalRule(func, minX, maxX, tolerance)
  sum = 0; 
  deltaX = 1/tolerance; 

  for n=minX:deltaX:maxX - deltaX
    sum = sum + 0.5 * deltaX * (func(n) + func(n + deltaX)); 
  end 

end 