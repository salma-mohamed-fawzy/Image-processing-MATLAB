function [  ] = sobeldetection( img )
%point sharpenning
sobel=edge(img,'Sobel');
imshow(sobel);
end

