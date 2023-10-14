function line = ransac(xpoints, ypoints)
n = length(xpoints);
numIterations = 10;
threshold = 0.2;
bestInliers = [];
bestSamplex = [];
bestSampley = [];
for iteration = 1:numIterations
    %Calculate two random points
    r = randi([1 n],1,2);
    x1 = xpoints(r(1));
    y1 = ypoints(r(1));
    x2 = xpoints(r(2));
    y2 = ypoints(r(2));
    x = [x1 x2];
    y = [y1 y2];
    % Fit a line to the two selected points
    model = polyfit(x, y, 1);
    % Calculate distances from all points to the model
    distances = abs(ypoints - polyval(model, xpoints));
    % Count inliers (points that are close to the model)
    inliers = sum(distances < threshold);
    % Update the best sample and bestinliers if this iteration has more inliers
    if inliers > numel(bestInliers)
        bestInliers = find(distances < threshold);
        bestSamplex = x;
        bestSampley = y;
    end
end
%calculate A And B aka k and m
A =(bestSampley(2)-bestSampley(1))/(bestSamplex(2) - bestSamplex(1));
B = bestSampley(1) - A*bestSamplex(1);
%Calculate LS error and TLS error
LS_error = 0;
num_inliers = length(bestInliers);
TLS_error = 0;
for i = 1:num_inliers
    x_curr = xpoints(bestInliers(i));
    y_curr = ypoints(bestInliers(i));
    error_current = (y_curr - (A*x_curr + B))^2;
    LS_error = LS_error + error_current;
    TLS_error = TLS_error + ((-A*x_curr + y_curr - B) / sqrt(A^2 + 1^2))^2; 
end
line = [A B LS_error TLS_error];






