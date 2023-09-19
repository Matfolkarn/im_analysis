function [ratio, density] = heightwidth(mat)
disp("fef")
[rown,coln]=size(mat);
disp("fef")
col1 = [];
disp(class(mat))
disp(rown)
disp("fefe")
row1 = [];
for r = 1:rown
    for c = 1:coln
        if mat(r,c) == 1
            disp(r)
            row1(end + 1) = r;
            col1(end + 1) = c;
        end
    end

end
disp("FEFEFEFDEFEFE")
col1_sorted = sort(col1);
row1_sorted = sort(row1);
disp(col1)
wid = col1_sorted(1) - col1_sorted(end);
disp("FEFEFEFDEFEFE")
hei = row1_sorted(1) - row1_sorted(end);
disp("FEFEFEFDEFEFE")
% DENSity
tot_ones = sum(sum(mat));
density = tot_ones/(wid*hei);

%DENSITY
ratio = hei/wid;