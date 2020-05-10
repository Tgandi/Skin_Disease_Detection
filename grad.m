
im = imread('peppers.png'); 
%imshow(im)

%get color edges and normalize magnitude 
C = coloredges(im); 
C = C / max(C(:));

%get grayscale edges and normalize magnitude 
G_image = single(rgb2gray(im)) / 255; 
G = sqrt(imfilter(G_image, fspecial('sobel')').^2 + imfilter(G_image, fspecial('sobel')).^2); 
G = G / max(G(:));

%show comparison 
figure, imshow(uint8(255 * cat(3, C, G, G)))