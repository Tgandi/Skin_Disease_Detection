I = imread('b.jpg');

%I=imwrite(I);


[Gx, Gy] = imgradientxy(I);

[Gmag, Gdir] = imgradient(Gx, Gy);

figure, imshow(Gmag, []), title('Gradient magnitude')
 figure, imshow(Gdir, []), title('Gradient direction')
title('Gradient Magnitude (Gmag) and Gradient Direction (Gdir) using Sobel method')
figure; imshowpair(Gx, Gy, 'montage'); axis off;
title('Directional Gradients, Gx and Gy, using Sobel method')