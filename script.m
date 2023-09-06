

m = zeros(5,5);
m;



for i = 1:5
    for y = 1:5
        m(i,y) = fimg((i-1)/4, (y-1)/4);
    end
end

m;
hg = transpose(m);
disp(hg);
%i = image(hg,'CDataMapping','scaled');
%colorbar

glm = hg*31;
disp(glm);
I = mat2gray(glm,[0 31]);
imshow(I);

function f = fimg(x,y)
    f = x*(1-y);
end


    
    