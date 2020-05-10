I = imread('abc.jpg');
 img =  imwrite(img, 'abc.tiff');
 imshow(img);

J = histeq(I);
subplot(1,2,1);
imshow( I );
%subplot(2,2,2);
%imhist(I)
subplot(1,2,2);
imshow( J );
%subplot(2,2,4);
%imhist(J)