%Rms contract takes a picture and returns a value
function [Crms] = RMS(image)
[H, W] = size(image);
  %Convert the image to double so that the rms equation is verified
image = double(image);
sum = 0;
for i = 1 : H
    for j = 1 : W
        sum = sum + image(i,j);
    end
end
%to calcluate average
ii = (1/H*W)*sum;
sum2 = 0;
for i = 1 : H
    %l is a length,w is weight of image
    for j = 1 : W
        %(i,j)is a gray level
        sum2 = sum2 + (image(i,j) - ii)^2;
    end
end
%the equation of rms
Crms = ((1/(H*W - 1)) * sum2)^1/2;
end