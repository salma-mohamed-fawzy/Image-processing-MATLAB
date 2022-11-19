function [] = verticaledgedetection( img )
mask=[-1 0 1;-2 0 2; -1 0 1];
x=imfilter(img,mask);
vertdet=edge(x,'log');
imshow(vertdet);
end
