function nr = nrow(mat)
h = height(mat);
result = [];
tot_ones = sum(sum(mat));
for i = 1:h
    result(end + 1) = sum(mat(i,:))/tot_ones;
end 
nr = result;
