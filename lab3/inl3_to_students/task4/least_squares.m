function p_ls = least_squares(x, y)
    
    n_points = size(x); 
    x_mean = mean(x); 
    y_mean = mean(y); 
    w = 0;
    for i=1: n_points
        w = w + (y(i) -y_mean)^2 - (x(i)-x_mean)^2; 
    end 
    
    r = 0; 
    for i=1: n_points 
        r = r + 2*(x(i)-x_mean)*(y(i)-y_mean); 
    end 
    
    k = (w + sqrt(w^2 + r^2))/r; 
    m = y_mean - k*x_mean; 
    LS_error = 0;
    TLS_error = 0;
    for i = 1:n_points
        LS_error = LS_error + (y(i) - (k*x(i) + m))^2;
        TLS_error = TLS_error + (abs(-k*x(i) + y(i) - m)/sqrt((-k)^2 + 1))^2; 
    end
    p_ls = [k, m, LS_error, TLS_error];
end