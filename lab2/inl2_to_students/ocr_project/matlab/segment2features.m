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
disp("BBBBBBBBBBBB")
im = I;
disp("BBBBBBBBBBBB")
S = im2segment(im);
disp("im2segment(im)")
disp(class(S));
disp("BBBBBBBBBBBB")
B = double(cell2mat(S));
disp("double(cell2mat(S)")




feat1 = nrow(B);
disp("1")
feat2 = ncol(B);
disp("2")
[feat3, feat4] = heightwidth(B);
disp("34")
feat5 = centroidy(B);
disp("5")
feat6 = centroidx(B);
disp("6")
%disp(feat3)
%disp(feat4)
features = [0.5, 0.7,0.5, 0.7,0.5, 0.7];
%disp(feat5)
%disp(feat6)
