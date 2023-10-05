function features = segment2features(I)
c = centerim(I);

%Width
[xmax, xmin, ymax, ymin, wid] = heightwidth(c);

%Centroidx and Centroidy
feat5 = centroidy(c, ymin, ymax);
feat6 = centroidx(c, xmin, xmax);

%Eccentrity
stats = regionprops(I, 'Eccentricity');
eccentricityValue = stats(1).Eccentricity;

%perimeter
perimeterImage = bwperim(I);
totalPerimeter = sum(perimeterImage(:));

%Euler
eu2 = bwmorph(I, 'fill')
eu = bweuler(eu2);
eu_norm = (eu + 1.5)/2.5;

%Perimeter
tot_ones = sum(sum(I));
normalizedPerimeter = totalPerimeter / tot_ones;

%Average width
objectlabel = 1;
stats = regionprops(eu2, 'BoundingBox')
width = stats.BoundingBox(3);
wid = width/18;


features = [eu_norm, wid, feat5, feat6, eccentricityValue, normalizedPerimeter];

