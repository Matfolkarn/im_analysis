function [ xmax, xmin, ymax, ymin, widd] = heightwidth(mat)
[rown,coln]=size(mat);
col1 = [];
row1 = [];
for r = 1:rown
    for c = 1:coln
        if mat(r,c) == 1
       
            row1(end + 1) = r;
            col1(end + 1) = c;
        end
    end

end

col1_sorted = sort(col1);
row1_sorted = sort(row1);
wid = col1_sorted(end) - col1_sorted(1);
hei = row1_sorted(end) - row1_sorted(1);


widd = wid/18;

xmax = col1_sorted(end);
xmin = col1_sorted(1);
ymax = row1_sorted(end);
ymin = row1_sorted(1);


% /ROWN -> NORMALIZE
ratio = hei/(wid*28);

% DENSity
tot_ones = sum(sum(mat));
density = tot_ones/(wid*hei);
%DENSITY