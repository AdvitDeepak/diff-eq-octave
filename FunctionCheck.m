clear 
clc 

tic 
rSum = RiemannSum(@(x) cos(x), 0, 1, 57500); % Min time: 0.96830s 
toc 
fprintf('Riemann Sum result: %.5d \n\n', rSum)

tic
tSum = TrapezoidalRule(@(x) cos(x), 0, 1, 109); % Min time: 0.00387s
toc 
fprintf('Trapezoidal Sum result: %.5d \n\n', tSum)

tic 
sSum = SimpsonsRule(@(x) cos(x), 0, 1, 6); % Min time: 0.000408s
toc 
fprintf('Simpsons Sum result: %.5d\n\n', sSum)