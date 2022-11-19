function [ ] = rgbTOgray( RGB,option )

[H W L ]=size(RGB);
gray=zeros(H,W);
gray=double(gray);
for i=1:H
    for j=i:W
        if option ==1
        gray(i,j)=(RGB(i,j,1)+RGB(i,j,2)+RGB(i,j,3))/3;
        end
        if option ==2
            gray(i,j)=RGB(i,j,1);
        end
        if option ==3
         gray(i,j)=RGB(i,j,2);
        end 
        if option ==4
          gray(i,j)=RGB(i,j,3);
        end
           if option ==5
           gray(i,j)=RGB(i,j,1)*0.5+RGB(i,j,2)*0.3+RGB(i,j,3)*0.2;
           end
              
    end
end
    gray=uint8(gray); 
    imshow(gray);
end
