function [projection, r] = eight(image, e1, e2, e3, e4)
im = imread(image);

x1 = im.*p1;
x2 = im.*p2;
x3 = im.*p3;
x4 = im.*p4;

projection = x1.*e1 + x2.*e2 + x3 .*e3 + x4.*e4;
r = abs(im - imh);
end