function [ ] = imgama(img,g )
[H,W] = size(img);
img=zeros(H,W);
img=im2double(img);
c=1;
for i=1:H
    for j=1:W
        img(i,j) = (c*img(i,j))^g ;
    end
end
img=im2uint8(img);
imshow(img);
end




