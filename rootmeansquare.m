function [] = rootmeansquare(im)
[H , W]=size(im);
for k=1:H
  for l=1:W
summ=sum(sum(im(k,l)));
  end
end
mean=(1/H*W)* summ;
for i=1:H
  for j=1:W
summition=0;
root=(im(i,j)- mean).^2;
summition=summition+root;
 end
end
im2uint8(im);
Crms=sqrt(((1/H*W)-1)*summition);
imshow(Crms);
end

