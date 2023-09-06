
x = linspace(0,1, 1000);
prr =6.*x.*(1-x);

subplot(2,3,1)
h = histogram(prr, 100);

disp(h.Values)


T = cumsum(h.Values)/1000

subplot(2,3,2)
plot( T) 

ps = T.*h;

subplot(2,3,3)
plot(ps)

disp(sum(ps  ))