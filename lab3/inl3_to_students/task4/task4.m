% Task 4: Fit lines to data points, using total least squares and 
% RANSAC + total least squares

% Clear up
clc;
close all;
clearvars;

% Begin by loading data points from linedata.mat
load linedata

N = length(xm); % number of data points

% Plot data
plot(xm, ym, '*'); hold on;
xlabel('x') 
ylabel('y')
title('CHOOSE-APPROPRIATE-TITLE-FOR-REPORT!') % OBS - CHANGE TITLE!
x_fine = [min(xm)-0.05,max(xm)+0.05]; % used when plotting the fitted lines

% Fit a line to these data points with total least squares
% Here you should write code to obtain the p_ls coefficients (assuming the
% line has the form y = p_ls(1) * x + p_ls(2)).
p_ls = [rand(), 6]; % REMOVE AND REPLACE WITH TOTAL LEAST SQUARES SOLUTION
plot(x_fine, p_ls(1) * x_fine + p_ls(2))

% Fit a line to these data points using RANSAC and total least squares on the inlier set.



p_ransac = [rand(), 6]; % REMOVE AND REPLACE WITH RANSAC SOLUTION
plot(x_fine, p_ransac(1) * x_fine + p_ransac(2), 'k--')

% Legend --> show which line corresponds to what (if you need to
% re-position the legend, you can modify rect below)
h=legend('data points', 'least-squares','RANSAC');
rect = [0.20, 0.65, 0.25, 0.25];
set(h, 'Position', rect)

% After having plotted both lines, it's time to compute errors for the
% respective lines. Specifically, for each line (the total least squares and the
% RANSAC line), compute the least square error and the total
% least square error. For the RANSAC solution compute errors on inlier set. 
% Note that the error is the sum of the individual
% squared errors for each data point! In total you should get 4 errors. Report these
% in your report, and comment on the results. OBS: Recall the distance formula
% between a point and a line from linear algebra, useful when computing orthogonal
% errors!

% WRITE CODE BELOW TO COMPUTE THE 4 ERRORS