
x = linspace(0,1, 10);
prr =6.*x.*(1-x);

subplot(2,3,1)
plot( prr) 

T = cumsum(prr)/1000;

subplot(2,3,2)
plot( T) 

ps = T.*prr;

subplot(2,3,3)
plot(ps)

disp(sum(ps  ))