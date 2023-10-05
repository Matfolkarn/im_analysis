function p_ls = least_squares(x, y)
    
    npoints = size(x); 
    
    xbar = mean(x); 
    ybar = mean(y); 
    
    w = 0;
    
    for i=1: npoints
        w = w + (y(i) -ybar)^2 - (x(i)-xbar)^2; 
    end 
    
    r = 0; 
    
    for i=1: npoints 
        r = r + 2*(x(i)-xbar)*(y(i)-ybar); 
    end 
    
    k = (w + sqrt(w^2 + r^2))/r; 
    m = ybar - k*xbar; 
    
    p_ls = [k, m];

end