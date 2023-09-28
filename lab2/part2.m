f = [3 4 7 4 3 5 6 12];

% Create a vector for the x-axis representing your data points
x = 1:numel(f);

% Create a figure and plot the points
figure;
plot(x, f, 'o', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b', 'MarkerSize', 8);
hold on;

% Plot linear lines between each point
for i = 1:numel(f) - 1
    line([x(i), x(i+1)], [f(i), f(i+1)], 'Color', 'r', 'LineWidth', 2);
end

hold off;

% Add labels and title
xlabel('Data Point Index (i)');
ylabel('Value (f)');
title('Plot of Points with Linear Lines');

% Optionally, you can adjust axis limits if needed
% xlim([0, numel(f) + 1]);

% Optionally, you can display grid lines
grid on;