function [  ] = Robertdetection( img )
%point detection
robert=edge(img,'Roberts');
imshow(robert);
end