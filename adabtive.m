clear;
load('89.mat')
img=cjdata.image;
out=histeq(img);
figure,title('original image'),imshow(out);
%a funcation to make a adaptive thresholding that take two parameter and
%value
adapt=adapthisteq(out,'clipLimit',0.02,'Distribution','rayleigh');
figure, imshow(adapt);