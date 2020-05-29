% a = the parameter controlling how often a susceptible-infected contact
%     results in a new exposure (beta) 
% b = the rate an infected recovers and moves into the resistant phase (gamma)
% c = the rate at which an exposed person becomes infective (sigma)
% d = the natural mortality rate (this is unrelated to disease). This models a 
%     population of a constant size. (mu) 
% e = the rate at which vaccination moves people from suceptible to resistant 
%     directly, without becoming exposed or infected (nu) 
% n = initial population size, stays constant (N) 

% Equations of model: 

% dS/dt = d(n - S) - a SI/n - eS
% dE/dt = a SI/n - (d + c)E
% dI/dt = cE - (d + b)I
% dR/dt = bI - dR + eS 

a = 0.7; 
b = 0.2; 
c = 0.5; 
d = 0; 
e = 0; 

finalDay = 50; 
stepSize = 1; 
initConditions = [10;1;0;0]; 

% The total number of individuals is the sum of all four types 
n = sum(initConditions); 

% y(1) = S, y(2) = E, y(3) = I, y(4) = R 
f = @(t,y) [d*(n-y(1))-a*(y(1)*y(3)/n)-e*y(1); 
            a*(y(1)*y(3)/n)-(d+c)*y(2); 
            c*y(2)-(d+b)*y(3);
            b*y(3)-d*y(4)+e*y(1)];
            
t = 0:stepSize:finalDay; 

% Create a solutions vector to store Y evaluated at all times t
% Store the initial conditions (Y evaluated at t = 0) 
currSol = initConditions; 
solVec = [currSol]; 

for i = 0:stepSize:finalDay-stepSize
  currSol = RK5(f, i, currSol, i + stepSize, 15);
  solVec = [solVec currSol];
endfor 

fprintf("\nAfter %d days, \n   S: %d \n   E: %d \n   I: %d \n   R: %d \n\n", 
        finalDay, currSol(1), currSol(2), currSol(3), currSol(4)); 
;
plot(t, solVec(1,:),'y;S;', % Color yellow found by Simi! (not in documentation)
     t, solVec(2,:), 'c;E;',  
     t, solVec(3,:),'r;I;', 
     t, solVec(4,:), 'g;R;');
xlabel("Days"); 
ylabel("Population"); 
title("SEIR Model"); 
axis("tight"); 
grid on; 




