r_space = linspace(0,1,100);

pr = 6.*r_space.*(1-r_space);
nexttile
plot(pr);
title('pr')

h = hist(pr, 20);

T = cumsum(h);
disp(T);
nexttile
title('T')
plot(T);

ps = T.*h;
nexttile
title('ps')
disp(ps);
plot(ps);
