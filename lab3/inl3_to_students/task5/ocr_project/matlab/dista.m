function d = dista(x1,x2)

d = 0
for i = 1:length(x1)
    
    d = d + abs(x1(i) - x2(i));

end