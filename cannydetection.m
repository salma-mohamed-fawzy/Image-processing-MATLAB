function [  ] = cannydetection( img )
%point detection
canny=edge(img,'Canny');
imshow(canny);
end

