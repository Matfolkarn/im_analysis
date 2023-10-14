function features = segment2features(I)
eu_img = bwmorph(I,'fill');
[m,n] = size(eu_img);

%Center image
%props = regionprops(eu_img, 'Centroid');
%centerOfMass = props.Centroid;
%translationVector = [n/2 - centerOfMass(1), m/2 - centerOfMass(2)];
%translatedImage = imtranslate(eu_img, translationVector, 'OutputView', 'full');
%c = translatedImage;


%Crop image
stats = regionprops(eu_img, 'BoundingBox');
BB = stats.BoundingBox;
c = imcrop(I, [BB(1), BB(2), BB(3), BB(4)]);

[m,n] = size(c);

%Width
[xmax, xmin, ymax, ymin, wid] = heightwidth(c);

%Centroidx and Centroidy
feat5 = centroidy(c, ymin, ymax);
feat6 = centroidx(c, xmin, xmax);

%Eccentrity
stats = regionprops(c, 'Eccentricity', 'EulerNumber');
eccentricityValue = stats.Eccentricity;
eulernumber = stats.EulerNumber;
%perimeter
perimeterImage = bwperim(c);
totalPerimeter = sum(perimeterImage(:));

%Euler
%eu_img = bwmorph(I,'fill');
eulernumber = bweuler(c);
%eu_norm = (eu + 1.5)/1.5;

%Perimeter
tot_ones = sum(sum(c));
normalizedPerimeter = totalPerimeter / (m*n);

%Proportion of white pixels
n_white = sum(c, 'all')/(m*n)

%
hole_size = sum(imfill(I, 'holes'), 'all')/(m*n);



%features = [eulernumber, wid, feat5, feat6, eccentricityValue, normalizedPerimeter];
features = [eulernumber, n_white, hole_size, wid, eccentricityValue]


