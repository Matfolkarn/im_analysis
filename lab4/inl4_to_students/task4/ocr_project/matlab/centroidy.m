function cy = centroidy(mat, ymin, ymax)
result = 0;
tot_ones = sum(sum(mat));
delta = ymax - ymin;
for i = ymin:ymax
    result  = result + ((i -ymin))*sum(mat(i,:)/tot_ones);
end 
cy = result/delta;