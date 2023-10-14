function cx = centroidx(mat, xmin, xmax)
result = 0;
delta = xmax -xmin;
tot_ones = sum(sum(mat));
for i = xmin:xmax
    result  = result + (i - xmin)*sum(mat(:,i)/tot_ones);
end 
cx = result/delta;