function [] = stretching(img,newmin,newmax)
[H , W ]=size(img);
newimage=zeros(H,W);
newimage=double(newimage);
oldmax=max(max(img));
oldmin=min(min(img));
for i=1:H
  for j=1:W
   newimage(i,j)=((img(i,j)-oldmin)/(oldmax-oldmin))*((newmax-newmin)+newmin);   
  end
end
newimage=uint8(newimage);
      if newimage(i,j)>255;
         newimage(i,j)=255;
      end
      if newimage(i,j)<0;
         newimage(i,j)=0;
      end    
figure,imshow(newimage);
end
 


