load('assignment1bases.mat');


for base = 1:3
    error = 0;
    for kk = 1:length(stacks{2})
        curimg = stacks{2}(:,:,kk);
        [projection, r] = eight(curimg, bases{base}(:,:,1), bases{base}(:,:,2), bases{base}(:,:,3), bases{base}(:,:,4));
        error = error + r;
    end
    disp(sum(error, "all")/length(stacks{1}));
end 


function [projection, r] = eight(image, e1, e2, e3, e4)

im = image;

x1 = sum(im.*e1,"all");
x2 = sum(im.*e2,"all");
x3 = sum(im.*e3,"all");
x4 = sum(im.*e4,"all");

projection = x1.*e1 + x2.*e2 + x3 .*e3 + x4.*e4;
r = abs(im - projection);
end