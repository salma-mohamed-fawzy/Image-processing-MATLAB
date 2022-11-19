function [  ] = zerocrossdetection( img )
%point detection
zerocross=edge(img,'zerocross');
imshow(zerocross);
end
