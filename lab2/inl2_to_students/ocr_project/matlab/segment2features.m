function features = segment2features(I)
% features = segment2features(I)

%number of pixels on row
%number of pixels on column
%height/width || normalize with height*width or total height/width?
%nr pixels in square of picture?
%centroid x?
%centroid y?

%nr corners? smoothing filter?


%imshow(I);
im = I;

%S = im2segment(im);
S = im;

%B = double(cell2mat(S));
B = S;



feat1 = nrow(B);
feat2 = ncol(B);
[feat3, feat4] = heightwidth(B);
feat5 = centroidy(B);
feat6 = centroidx(B);
%disp(feat3)
%disp(feat4)
features = [feat3, feat4,feat5, feat6];
%disp(feat5)
%disp(feat6)
