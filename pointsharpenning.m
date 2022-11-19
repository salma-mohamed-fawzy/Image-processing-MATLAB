function [] = pointsharpenning( img )
%noisedimg=imnoise(img,'salt & pepper');
%h=1;
%lab=1/9;
%is a 3*3 filter (automatic)
lab = fspecial('laplacian',0.2);
filter=imfilter(img,lab);
sharp=imsubtract(img,filter);
imshow(sharp);
end
