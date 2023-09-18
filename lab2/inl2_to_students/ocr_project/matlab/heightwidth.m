function ratio = heightwidth(mat)
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

wid = col1_sorted(1) - col1_sorted(end);
hei = row1_sorted(1) - row1_sorted(end);

ratio = hei/wid;