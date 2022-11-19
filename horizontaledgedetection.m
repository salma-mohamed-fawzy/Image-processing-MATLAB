function [] = horizontaledgedetection( img )
mask=[-1 -2 -1;0 0 0; 1 2 1];
x=imfilter(img,mask);
hordet=edge(x,'log');
imshow(hordet);
end


