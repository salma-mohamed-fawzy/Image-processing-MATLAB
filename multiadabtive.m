clear;
%reading the image
load('89.mat')
img=cjdata.image;
out=histeq(img);
figure,title('original image'),imshow(out);
%funcation to make thresholding technique on the image
ml = multithresh(I);
%applying segmentaion on image
seg_I = imquantize(I,ml);
figure
imshow(seg_I,[]);
figure
imshow(I);

