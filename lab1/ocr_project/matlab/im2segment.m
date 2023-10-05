function S = im2segment(im)

im = im2gray(im);
im = im2double(im);
threshim = im > 35;
mod = bwareaopen(threshim,30);
sbw = bwlabel(mod,8);
nrseg = max(sbw(:));
S = cell(1,nrseg);

for kk = 1:nrseg
    S{kk}= (sbw==kk); 
end

subplot(2,4,1)
plot(im)
subplot(2,4,2)
plot(S{1})
subplot(2,4,3)
plot(S{2})
subplot(2,4,4)
plot(S{3})
subplot(2,4,5)
plot(S{4})