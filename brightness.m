function [] = brightness( gray,option,offset )
[H , W]=size(gray);
for i=1:H
  for j=1:W
                if option==1
                 gray(i,j)=gray(i,j)+offset; 
                elseif option==2
                  gray(i,j)=gray(i,j)-offset;
                elseif option==3
                 gray(i,j)=gray(i,j)/offset;
                elseif option==4
                  gray(i,j)=gray(i,j)*offset; 
                end 

              if gray(i,j)>255;
                        gray(i,j)=255;
              end
              if gray(i,j)<0;
                        gray(i,j)=0;
              end    
  end
end 
imshow(gray);
end

 


