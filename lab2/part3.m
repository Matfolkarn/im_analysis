 

training = [0.4003 ; 0.3988 ; 0.3998 ; 0.3997; 0.2554 ; 0.3139 ; 0.2627 ; 0.3802 ; 0.5632 ; 0.7687 ; 0.0524 ; 0.7586 ];
disp(training)
prediction = [1 ;1;1;1;2;2;2;2;3;3;3;3];
mdl = fitcknn(training, prediction);
mdl
mdl.Prior

test = [0.4010 ; 0.3995 ; 0.3991 ; 0.3287 ; 0.3160 ; 0.2924 ; 0.4243 ; 0.5005 ; 0.6769 ];
predict(mdl, test)

%% GAUSIAN
x = linspace(0,2,100);
data = [0.4003 ; 0.3988 ; 0.3998 ; 0.3997;0.4010 ; 0.3995 ; 0.3991; 0.2554 ; 0.3139 ; 0.2627 ;
    0.3802 ;0.3287 ; 0.3160 ; 0.2924 ; 0.5632 ; 0.7687 ; 0.0524 ; 0.7586; 0.4243 ; 0.5005 ; 0.6769 ];
for d = 1:length(data)
    current = data(d);

    one = normpdf(current,0.4, 0.01);
    two = normpdf(current, 0.32, 0.05);
    three = normpdf(current,0.55, 0.2);
    if one > two && one > three
        disp("1")
    elseif two > three && two > one
        disp("2")
    else
        disp("3")
    end
end

%% Part 5

eps = 0.2;

case1 = 0.3 * (1-eps)^10 * eps^6;
case2 = 0.2 * (1-eps)^12 * eps^4;
case3 = 0.2*(1-eps)^10*eps^6;
case4 = 0.3 *(1-eps)^8*eps^8;

disp(case1/ (case1 +case2+case3+case4))
disp(case2/ (case1 +case2+case3+case4))
disp(case3/ (case1 +case2+case3+case4))
disp(case4/ (case1 +case2+case3+case4))

%% Part 6

B = 0.35*0.8^5*0.7^5*0.2^5;
zero = 0.4*0.8^3*0.7^5*0.2^5*0.3^2;
eight = 0.25*0.8^4*0.7^7*0.2^3*0.3;

disp(B / (B + zero + eight))
disp(zero/ (B + zero + eight))
disp(eight/ (B + zero + eight))

%% Part 4 
eps = 0.1;
ca1 = 1/4 *(eps)*(1-eps)^3;
ca2 = 1/2 *(eps^3)*(1-eps);
ca3 = 1/4*(eps^2)*(1-eps)^2;

disp(ca1/(ca1 + ca2 + ca3))
disp(ca2/(ca1 + ca2 + ca3))
disp(ca3/(ca1 + ca2 + ca3))

