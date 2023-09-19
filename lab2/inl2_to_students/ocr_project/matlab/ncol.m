function nr = ncol(mat)
[rownum,column]=size(mat);
tot_ones = sum(sum(mat));
result = [];
for i = 1:column
    result(end + 1) = sum(mat(:,i))/tot_ones;
end 
nr = result;
