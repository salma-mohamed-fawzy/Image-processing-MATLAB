%Michelson contract takes a picture and returns a value
function [CM] = CMichelson(image)
   %Convert the image to double so that the michelson equation is verified
image = double(image);
%Set the highest value in the matrix for the image
    mx = max(max(image));
    %Set the lowest value in the Matrix of the image
    mn = min(min(image));
    %Calculate the Michelson contract from the formula c_michelson
    CM = ((mx + mn) / (mx - mn));
end