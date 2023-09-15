r_space = linspace(0,1,1000);

pr = 6.*r_space.*(1-r_space);
prr = @(r) 6*r*(1-r);

nexttile
plot(pr);
title('pr')

h = histogram(pr, 100);

disp(h)

T = cumsum(pr);

nexttile
disp(sum(T))

plot(T);
title('T')

ps = pr.*T;
nexttile


plot(ps);
title('ps')