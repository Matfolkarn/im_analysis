function cx = centroidx(mat)
[rownum,column]=size(mat);
result = 0;
for i = 1:column
    %NORMALIZE WITH (I/column)
    result  = result + (i/column)*sum(mat(:,i));
end 
tot_ones = sum(sum(mat));
cx = result/ tot_ones;