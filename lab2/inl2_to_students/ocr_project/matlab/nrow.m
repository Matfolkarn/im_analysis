function nr = nrow(mat)
h = height(mat);
result = [];
for i = 1:h
    result(end + 1) = sum(mat(i,:));
end 
nr = result;
