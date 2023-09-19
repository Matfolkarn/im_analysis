function cx = centroidx(mat)
[rownum,column]=size(mat);
result = 0;
for i = 1:column
    result  = result + i*sum(mat(:,i));
end 
tot_ones = sum(sum(mat));
cx = result/ tot_ones;