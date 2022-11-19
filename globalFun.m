%global contract takes a picture and returns a value
function [CG] = globalFun(image,pixel)
%Convert the image to double so that the global equation is verified
image = double(image);
%range of image
%imax=2^pixel
n = 2^pixel;
%imin=0
n = n-1;
%Set the highest value in the matrix for the image
mx = max(max(image));
%Set the lowest value in the Matrix of the image
mn = min(min(image));
%Calculate the global contract from the formula c_global
CG = (mx-mn)/n;
end
