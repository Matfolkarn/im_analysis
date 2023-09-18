function nr = nrow(mat)
h = height(mat);
disp(h)
result = [];
for i = 1:h
    result(end + 1) = sum(mat(i,:));
end 
nr = result;
