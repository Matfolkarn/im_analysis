
x = linspace(0,1, 1000);
prr =6.*x.*(1-x);
T = cumsum(prr)/1000;

subplot(2,3,2)
plot( T) 

ps = T.*prr;

subplot(2,3,3)
plot(ps)

disp(sum(ps  ))