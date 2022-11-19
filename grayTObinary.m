function [] = grayTObinary( gray, threshold )
[H W L ]=size(gray);
binary=zeros(H,W);

for i=1:H
    for j=i:W
        if gray(i,j)>threshold
        binary(i,j)=1;
        end
        if gray(i,j)<=threshold
        binary(i,j)=0;
        end
              
     end
end
binary=logical(binary);
imshow(binary);    
end
