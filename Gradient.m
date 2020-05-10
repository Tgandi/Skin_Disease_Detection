%function f = Gradient(I)


%gradient generation......

I=imread('1.jpg');
%I=histeq(I);
%imshow(I);
%I=rgb2gray(I)
I=double(I);

[a,b,c]=size(I);


new_I = I;

Gy = [1 2 1; 0 0 0; -1 -2 -1];
Gy=double(Gy);
Gx = Gy';
Gxy=[0 0 1;0 -1 0;1 0 0];

for k=1:c
  for i = 2 : a-1
    for j = 2 : b-1        
           T = I(i - 1 : i + 1, j - 1 : j + 1);
           m=sum(sum(Gx.* T));
           n=sum(sum(Gy.* T));
           p=sum(sum(Gxy.* T));
           temp=(2*p)/(m-n);
          
           x=atan(temp);
           theta=(1/2)*x;
           f=sqrt((1/2)*((m+n)+((m-n)*cos(2*theta))+(2*p*sin(2*theta))));
           
          % pixValue =sqrt(m^2+ n^2);
          % pixValue =(x-y);
           new_I(i, j, k) = f;
    end
   end
end
img=new_I;
imshow(img);

%figure; 
%imshow(new_I); 
%title(' Sobel filter');
%end

%%%%---------------------------------------%%%%%%----------------------------%%%%%------------------------------

%{ smoothing of image using box filter
h = fspecial('average', 3);
img=filter2(h, img);
imshow(img);
%{

.................... thresholding..........
level = multithresh(img);
seg_I = imquantize(img,level);
figure
%imshow(seg_I,[])


new=kmeans(img,3);
imshow(new);
%}




