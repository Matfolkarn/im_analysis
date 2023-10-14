function S = im2segment(im)
%im = medfilt2(im);
%im = im2gray(im);
%im = im2double(im);

limit = multithresh(im,1);


filter = fspecial('average', [36, 36]);
avg_pixel = imfilter(im, filter)
subtract_pixel = im - (avg_pixel+15); 
threshim = imbinarize(subtract_pixel);

%threshim = im >= 35;
mod = bwareaopen(threshim,30);

mod = bwmorph(mod,'spur');
mod = bwmorph(mod,'fill');

sbw = bwlabel(mod,8);



nrseg = max(sbw(:));
S = cell(1,nrseg);

for kk = 1:nrseg
    S{kk}= (sbw==kk); 
    
end

