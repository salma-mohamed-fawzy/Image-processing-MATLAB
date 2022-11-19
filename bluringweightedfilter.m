function [  ] = bluringweightedfilter( img )
noisedimg=imnoise(img,'salt & pepper');
h=1;
h=h/25;
h = fspecial('gaussian',5,.5);
weightedfilter=imfilter(noisedimg,h);
figure,imshow(weightedfilter);
end

