
I = imread('abc.jpg');
I=double(I);
%Calculate gradients and display.

[Gmag, Gdir] = imgradient(I,'sobel');

figure; imshowpair(Gmag, Gdir, 'montage');
title('Gradient Magnitude, Gmag (left), and Gradient Direction, Gdir (right), using Prewitt method')
axis off;