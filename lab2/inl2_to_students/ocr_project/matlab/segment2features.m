function features = segment2features(I)
% features = segment2features(I)

disp(class(I))
im = double(imread(I));
S = im2segment(im);
B = double(cell2mat(S(1)));
disp("BBBBBBBBBBBB")

feat1 = nrow(B);
feat2 = ncol(B);

feat3 = heightwidth(B);
disp(feat3)
features = [];

disp(features)
