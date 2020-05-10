clc;
clear;
close all;

I = cropimage('capture.png');
I=imresize(I,[256 256]);

imshow(I);

[Col, Row]=ginput(5);
c =Col;
r =Row;

BinaryMask = roipoly(I,c,r);
figure;
imshow(BinaryMask);

ROI=zeros(256,256);

NONROI=zeros(256,256);
for i=1:256
for j=1:256
if BinaryMask(i,j)==1
ROI(i,j)=I(i,j);
else
NONROI(i,j)=I(i,j);
end
end
end

figure;
subplot(1,2,1);
imshow(ROI,[]);
title('ROI');
subplot(1,2,2);
imshow(NONROI,[]);
title('NON ROI');