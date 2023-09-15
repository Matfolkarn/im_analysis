x = linspace(-3, 3, 1000); 


y = zeros(size(x));

idx = abs(x) <= 1;
y(idx) = cos(pi/2 * x(idx));

idx = abs(x) > 1 & abs(x) <= 2;
y(idx) = -pi/2 * (abs(x(idx)).^3 - 5*abs(x(idx)).^2 + 8*abs(x(idx)) - 4);

plot(x, y);
xlabel('x');
ylabel('g(x)');
title('Plot of g(x)');
grid on;

%% 

f = [3 4 7 4 3 5 6 12];
x_values = 1:length(f);



x_interp = linspace(1, 8, 100);

f_interp = zeros(size(x_interp));



for i = 1:length(x_interp)
    x = x_interp(i);
    x_res = 0;
    for s = 1:length(f)
        res = gfunc(s - x) * f(s);
        x_res = x_res + res;
    end
 
    f_interp(i) = x_res;
end

plot(x_values, f, 'o', x_interp, f_interp, '-');
xlabel('x');
ylabel('f');
disp(gfunc(0.5))

function g = gfunc(h)

if abs(h) <= 1
    g = cos(pi/2 * h);
elseif abs(h) > 1 && abs(h) <= 2
    g = -pi/2 * (abs(h).^3 - 5*abs(h).^2 + 8*abs(h) - 4);
else 
    g = 0;
end
end
%% NEAREST NEIGHBOUR

