load('1.mat')
img=cjdata.image;
out=histeq(img);
figure,title('original image'),imshow(out);

