function sol_vector = sysODE(A, initVals_matrix, x0, x1)
  # We first find the eigvectors, eigvalues 

  [V L] = eig(A); 
  L = diag(L); 

  % Now we need to solve for c1, c2, ... cn 

  % y1 = c1 * V(1,1) * exp(L(1) * x) + ... + cn * V(1,n) * exp(L(n) * x)
  % y2 = c1 * V(2,1) * exp(L(1) * x) + ... + cn * V(2,n) * exp(L(n) * x)
  % .
  % .
  % . 
  % yn = c1 * V(n,1) * exp(L(1) * x) + ... + cn * V(n,n) * exp(L(n) * x)

  % This is essentially a system of n linear equations. We first use
  % the initial conditions to eliminate x from the system of equations. 

  % We define a n X n matrix to hold each c constant 
  
  C_matrix = V .* exp(L' .* x0); 

  % Now we have the following system: 

  % y1(init_val) = c1 * c1_const1 + c2 * c2_const1 + ... cn * cn_constn
  % y2(init_val) = c1 * c1_const2 + c2 * c2_const2 + ... cn * cn_constn
  % .
  % .
  % .
  % yn(init_val) = c1 * c1_constn + c2 * c2_const2 + ... cn * cn_constn

  % We can solve this using matrices with the '\' operator. 

  c_sols = C_matrix\initVals_matrix;

  % We use c_sols, L, V, and the value of x1 to find the sol_vector. 

  sol_vector = (c_sols' .* exp(L' .* x1)) * (V'); 
  sol_vector = sol_vector'; 

end 