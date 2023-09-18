function features = segment2features(I)
% features = segment2features(I)

disp(class(I))
im = double(imread(I));
S = im2segment(im);
B = double(cell2mat(S(1)));
disp("BBBBBBBBBBBB")
disp(nrow(B))
disp(ncol(B))

features = []
%features(end + 1) = nrow(B);
%features(end + 1) = ncol(B);

features = [1,2,3,4,5,6];