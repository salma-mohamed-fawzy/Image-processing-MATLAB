function [ ] = salma_equalization(img)
level=max(max(img));
histarr = zeros(256,1);
normhistarr=zeros(256,1);
eqhistarr=zeros(256,1);
[H , W ] = size(img);
for i=1:H
    for j=1:W
        histarr(img(i,j)+1)=histarr(img(i,j)+1)+1;
    end
end
for i=1:H
    for j=1:W
        normhistarr(img(i,j)+1)=(histarr(img(i,j)+1)/(H*W));
    end
end

for i=1:H
    for j=1:W
     eqhistarr(img(i,j)+1) = (level-1) *  normhistarr(img(i,j)+1);
     eqhistarr(img(i,j)+1)=uint8(eqhistarr(img(i,j)+1));
    end
end
newimg=zeros(H,W);
for i=1:H
    for j=1:W
     newimg(i,j) = eqhistarr(img(i,j)+1);
    end
end
newimg=im2uint8(newimg);
imshow(newimg);
end

