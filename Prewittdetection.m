function [  ] = Prewittdetection( img )
%pointsharpening
Prewitt=edge(img,'Prewitt');
imshow(Prewitt);
end