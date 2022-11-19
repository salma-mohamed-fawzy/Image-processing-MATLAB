function [  ] = pointdetectionlog( img )
%log does edge detection after smoothing
log=edge(img,'log ');
imshow(log);
end

