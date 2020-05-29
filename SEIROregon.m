% Plot for COVID-19 spread in Oregon, CA
% Period: February 29, 2020 - May 23, 2020 (85 day span, inclusive) 
% Data from: https://covid19.healthdata.org/united-states-of-america/oregon

t = 0:1:84; 

# Data for susceptible, exposed, and recovered not available on the site. 

i = [1 1 2 3 3 3 4 6 9 12 15 18 22 26 31 36 44 55 69 85 103 125 151 182 219 265 323 391 464 535 605 673 741 809 875 943 1008 1074 1136 1202 1268 1338 1411 1487 1560 1622 1677 1730 1786 1843 1899 1953 2007 2063 2121 2182 2241 2297 2348 2398 2451 2509 2569 2630 2693 2761 2834 2911 2989 3067 3144 3217 3285 3350 3414 3476 3535 3588 3637 3684 3732 3777 3819 3857 3896]; 
d = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 3 4 5 6 7 9 11 12 13 14 16 18 20 22 23 25 27 29 32 36 41 46 50 53 56 59 62 66 70 73 75 77 79 81 84 87 90 93 96 99 102 105 107 109 111 113 115 118 121 124 127 129 131 133 135 137 138 139 140 142 144 146 148 150 152]; 

plot(t, i, 'r;Infected;', t, d, 'g;Death;')
     
xlabel("Days Since February 29, 2020"); 
ylabel("Number of individuals"); 
title("SEIR COVID-19 Spread - Oregon, USA | Feb 29 to May 23"); 
axis("tight"); 
grid on; 




