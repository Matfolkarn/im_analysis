function cy = centroidy(mat)
h = height(mat);
result = 0;
for i = 1:h
    result  = result + i*sum(mat(i,:));
end 
tot_ones = sum(sum(mat));
cy = result/ tot_ones;