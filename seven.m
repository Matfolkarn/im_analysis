p1 = 1/2* [1 0 -1; 1 0 -1; 0 0 0; 0 0 0];

p2 =1/3* [1 1 1; 1 0 1; -1 -1 -1; 0 -1 0];

p3 =1/3* [0 1 0; 1 1 1; 1 0 1; 1 1 1];

p4 = 1/2 *[0 0 0; 0 0 0; 1 0 -1; 1 0 -1];

f = [-2 6 3; 13 7 5; 7 1 8; -3 4 4];

x1 = sum(f.*p1, "all");
x2 = sum(f.*p2,"all");
x3 = sum(f.*p3,"all");
x4 = sum(f.*p4,"all");

fh = x1.*p1 + x2.*p2 + x3 .*p3 + x4.*p4;
disp(fh)
disp(x1)
disp(x2)
disp(x3)
disp(x4)
%disp(sum(abs(f) - abs(fh)))