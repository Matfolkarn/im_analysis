function y = classify(x, x_mod, y_mod)


[m,n] = size(x_mod);

res_column = 1;
res_dist = dista(x,x_mod(:,1))

for i = 2:n
    d = dista(x, x_mod(:,i));
    if d < res_dist;
        res_dist = d;
        res_column = i;
    end
end

    
y = y_mod(res_column); % REMOVE AND REPLACE WITH YOUR CODE
end

