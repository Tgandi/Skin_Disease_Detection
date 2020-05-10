 

function Crop =cropimage(Image);
clc
clear all;
I = imread('capture.png')
%I=imread(Image)
CI= imcrop(I);
% if we know how much we need to crop like parameter passsing in the image
%CI= imcrop(I,[60 40 100 90]);
%figure()
%imshow(I)
%figure()
imshow(CI)
Crop=CI;
end




%{
a=imread('capture.png');



x=2;
y=2;

c=size(a)
for i = x:1:c(1)-x
for j = y:1:c(2)-y
b(i+1-x,j+1-y)=a(i,j);
end
end
figure()
imshow(a)
figure()
imshow(b)
size(b)
%}