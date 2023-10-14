function S = im2segment(im)

filter = fspecial('average', [36, 36]);
average_pixel = imfilter(im, filter);
subtract_pixel = im - (average_pixel+15); 
threshim = imbinarize(subtract_pixel);

mod = bwareaopen(threshim,30);
mod = bwmorph(mod,'spur');
mod = bwmorph(mod,'fill');

sbw = bwlabel(mod,8);

nrseg = max(sbw(:));
S = cell(1,nrseg);

for kk = 1:nrseg
    S{kk}= (sbw==kk); 
    
end

