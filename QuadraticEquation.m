clear

a = input('a = ');
b = input('b = ');
c = input('c = ');

discriminant = (b^2-4*a*c)
x1 = (-b + (discriminant)^0.5) / (2*a)
x2 = (-b - (discriminant)^0.5) / (2*a)

if (discriminant)>0
    ('Roots are real and distinct.')
else (discriminant)<0
    ('Roots are complex conjugates.')
% else (discriminant)==0
%     ('Roots are real and equal.')
end

% if (discriminant)==0
%     ('Roots are real and equal.')
% end
% if (discriminant)<0
%     ('Roots are complex conjugates.')
% end