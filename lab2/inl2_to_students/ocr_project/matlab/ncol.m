function nr = ncol(mat)
[rownum,column]=size(mat);
disp(column)
result = [];
for i = 1:column
    result(end + 1) = sum(mat(:,i));
end 
nr = result;
