I=imread('b.jpg');
[m,n]=size(I);
for i=1:m
    for j=1:n
        if(I(i,j)>70)
            I(i,j)=255;
        end
    end
end
imshow(I);