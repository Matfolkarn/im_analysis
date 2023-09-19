function cy = centroidy(mat)
h = height(mat);
result = 0;
for i = 1:h
    %NORMALIZE WITH (I/h)
    result  = result + (i/h)*sum(mat(i,:));
end 
tot_ones = sum(sum(mat));
cy = result/ tot_ones;