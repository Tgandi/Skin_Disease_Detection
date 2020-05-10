
I = imread('capture.png');
I=uint8(I);
I=rgbtogray(I);
[Gx, Gy] = imgradientxy(I);
[Gmag, Gdir] = imgradient(Gx, Gy);


%[Gmag, Gdir] = imgradient(I,'Sobel');

%{
figure;
imshowpair(Gmag, Gdir, 'montage');
title('Gradient Magnitude, Gmag (left), and Gradient Direction, Gdir (right), using Sobel method')
axis off;
%}

figure, imshow(Gmag, []), title('Gradient magnitude')
 figure, imshow(Gdir, []), title('Gradient direction')
figure; imshowpair(Gx, Gy, 'montage'); 
axis off;
 

