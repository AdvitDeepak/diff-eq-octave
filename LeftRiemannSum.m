clear
% function
f=@(x) x.^2;
% inputs: tolerance and range
tol = input('Number of decimal places: ');
rangemin = input('Minimum x value of range: ');
rangemax = input('Minimum x value of range: ');
% initialize variables
suml = 0;
deltax = 10^(-tol);
xval = rangemin;

tic
% calculate Riemann Sum
for n=1:(rangemax/deltax - deltax)
    rectarea = f(xval)*deltax;
    suml = suml + rectarea;
    xval = xval + deltax;
end
% specify demical places
%fprintf('sum1 = %12.5f',suml);

suml
toc


tic
integral(f,0,1)
toc