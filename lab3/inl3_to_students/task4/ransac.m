function line = ransac(xpoints, ypoints)

points = [xpoints', ypoints'];
n = length(xpoints)

numIterations = 10;
threshold = 0.2;

bestInliers = [];
bestSamplex = [];
bestSampley = [];
for iteration = 1:numIterations
    % Randomly select two points to form a model (a line in this case)
    
    r = randi([1 n],1,2)

    x1 = xpoints(r(1))
    y1 = ypoints(r(1))
    x2 = xpoints(r(2))
    y2 = ypoints(r(2))
    
    x = [x1 x2]
    y = [y1 y2]

    
    % Fit a line to the two selected points
    model = polyfit(x, y, 1);
    
    % Calculate distances from all points to the model
    distances = abs(ypoints - polyval(model, xpoints));
    
    % Count inliers (points that are close to the model)
    inliers = sum(distances < threshold);
    
    % Update the best model if this iteration has more inliers
    if inliers > numel(bestInliers)
        bestInliers = find(distances < threshold);
        bestSamplex = x;
        bestSampley = y
    end
end

A =(bestSampley(2)-bestSampley(1))/(bestSamplex(2) - bestSamplex(1));
B = bestSampley(1) - A*bestSamplex(1);
line = [A B];


