function features = segment2features(I)
eu_img = bwmorph(I,'fill');

%Crop image
stats = regionprops(eu_img, 'BoundingBox');
BB = stats.BoundingBox;
c = imcrop(I, [BB(1), BB(2), BB(3), BB(4)]);
[m,n] = size(c);

%Width
[xmax, xmin, ymax, ymin, ratio] = heightwidth(c);

%Centroidx and Centroidy
centroid_y = centroidy(c, ymin, ymax);
centroid_x = centroidx(c, xmin, xmax);

%Eccentrity and Circularity
stats = regionprops(c, 'Eccentricity', 'EulerNumber', 'Circularity');
eccentricityValue = stats.Eccentricity;
eulernumber = stats.EulerNumber;
circularity = stats.Circularity;

%perimeter
perimeterImage = bwperim(c);
totalPerimeter = sum(perimeterImage(:));
normalizedPerimeter = totalPerimeter / (m*n);

%Proportion of white pixels
n_white = sum(c, 'all')/(m*n);

%hole size
area = sum(c, 'all');
filledarea = regionprops(c, 'FilledArea');
filledarea = filledarea.FilledArea;
blackarea = minus((m*n),area);
hole_size = minus(filledarea,area)/blackarea;

features = [eulernumber, n_white, hole_size, ratio, eccentricityValue, normalizedPerimeter, centroid_y, centroid_x, circularity];


