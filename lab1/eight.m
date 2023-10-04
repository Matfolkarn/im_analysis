function [projection, r] = eight(imag, e1, e2, e3, e4)

im = imag;

x1 = sum(im.*e1,"all");
x2 = sum(im.*e2,"all");
x3 = sum(im.*e3,"all");
x4 = sum(im.*e4,"all");

projection = x1.*e1 + x2.*e2 + x3 .*e3 + x4.*e4;
image(projection);
norm_proj = norm(projection);
norm_img = norm(imag);
r = abs(norm_img - norm_proj);
end