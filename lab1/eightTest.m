load('assignment1bases.mat');

for nstack = 1:2
    for base = 1:3
        error = 0;
        for kk = 1:length(stacks{nstack})
            curimg = stacks{nstack}(:,:,kk);
            [projection, r] = eight(curimg, bases{base}(:,:,1), bases{base}(:,:,2), bases{base}(:,:,3), bases{base}(:,:,4));
            error = error + r;
        end
        average_error = error/400
    end 
end

subplot(2,4,1)
imagesc(bases{1}(:,:,1))
subplot(2,4,2)
imagesc(bases{1}(:,:,2))
subplot(2,4,3)
imagesc(bases{1}(:,:,3))
subplot(2,4,4)
imagesc(bases{1}(:,:,4))

function [projection, r] = eight(image, e1, e2, e3, e4)

im = image;

x1 = sum(im.*e1,"all");
x2 = sum(im.*e2,"all");
x3 = sum(im.*e3,"all");
x4 = sum(im.*e4,"all");

projection = x1.*e1 + x2.*e2 + x3 .*e3 + x4.*e4;
norm_proj = norm(projection);
norm_img = norm(image);
r = abs(norm_img - norm_proj);
end