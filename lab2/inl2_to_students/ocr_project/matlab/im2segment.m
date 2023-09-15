function [S] = im2segment(im)
% [S] = im2segment(im)

nrofsegments = 5; % could vary, probably you should estimate this
S = cell(1,nrofsegments);
m = size(im,1);
n = size(im,2);
for kk = 1:nrofsegments
    S{kk}= (rand(m,n)<0.5); % this is not a good segmentation method...
end
