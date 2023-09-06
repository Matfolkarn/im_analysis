function S = im2segment(im)

im = im2gray(im);
im = im2double(im);
threshim = im > 50;

mod = bwareopen(threshim,30);

sbw = bwlabel(mod,8);
nrseg = max(sbw(:));
S = cell(1,nrseg);

for kk = 1:nrofsegments
    S{kk}= (sbw==kk); % this is not a good segmentation method...
end