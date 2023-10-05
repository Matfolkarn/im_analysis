function ci = centerim(im)

props = regionprops(im, 'Centroid');
xt = props.Centroid(1);
yt = props.Centroid(2);
[rows, columns] = size(im);
xc = columns/2;
yc = rows/2;

deltax = xc - xt;
deltay = yc - yt;


centeredImage = imtranslate(im,[deltax deltay],'FillValues', 0);

ci = centeredImage;