function midX = bsct(func, minX, maxX, tolerance)
  
  for n=1:1000
    midX = (minX + maxX)/2; 
    
    % Calculate the y-values of the min, mid, max 
    valMin = func(minX); 
    valMid = func(midX); 
    valMax = func(maxX); 
    
    % Bisect based on the sign of y at min, mid, max 
    if ((valMin * valMid) > 0)
      minX = midX; 
    elseif ((valMid * valMax) > 0)
      maxX = midX; 
    end 
    
    % If within the tolerance, break 
    if (abs(valMid) < 1/tolerance)
      break
    end 
    
  end 
 
end 

