clc;
clear;
close;
a=imread('cameraman.tif');

b=size(a);                                         
c=zeros(1,256);
for i=1:b(1)                                     
    for j=1:b(2)                                    
        for k=0:255                                 
            if a(i,j)==k                            
                c(k+1)=c(k+1)+1;                   
            end
        end
    end
end

pdf=(1/(b(1)*b(2)))*c;

cdf = zeros(1,256);
cdf(1)=pdf(1);
for i=2:256
    cdf(i)=cdf(i-1)+pdf(i);
end
cdf = round(255*cdf);
a1=imread('cameraman.tif');
b1=size(a1);
a1=double(a1);

c1=zeros(1,256);
for i1=1:b1(1)
    for j1=1:b1(2)
        for k1=0:255
            if a1(i1,j1)==k1
                c1(k1+1)=c1(k1+1)+1;
            end
        end
    end
end
pdf1=(1/(b1(1)*b1(2)))*c1;
cdf1 = zeros(1,256);
cdf1(1)=pdf1(1);
for i1=2:256
    cdf1(i1)=cdf1(i1-1)+pdf1(i1);
end

cdf1 = round(255*cdf1);
d = 255*ones(1,256);
for k=1:256
    for k1=1:256
    if cdf(k)<cdf1(k1)
        d(k)=k1;                                   
        break
    end
    end
end

ep = zeros(b(1),b(2));
for i=1:b(1)
    for j=1:b(2)
        t=(a(i,j)+1);
        ep(i,j)=d(t);
    end
end

c2 = zeros(1,256);
for i1=1:b1(1)
    for j1=1:b1(2)
        for k1=0:255
            if ep(i1,j1)==k1
                c2(k1+1)=c2(k1+1)+1;
            end
        end
    end
end


%Plotting Given Image its histogram and Modified image and its Histogram
subplot(2,2,1);
imshow(uint8(a));
title('Original image');
subplot(2,2,2);
imshow(uint8(ep));
title('Modified image');
subplot(2,2,3);
plot(c);
title('histogram of original image');
subplot(2,2,4);
plot(c2);
title('histogram of modified image');

%Plotting Given Image and Modified image 
figure;
subplot(1,2,1);
imshow(uint8(a));
title('Original image');

subplot(1,2,2);
imshow(uint8(ep));
title('Modified image');
figure;
subplot(2,2,1);
imshow(uint8(a1));
title('Image with required histogram');
subplot(2,2,2);
imshow(uint8(ep));
title('Modified image');
subplot(2,2,3);
plot(c1);
title('Required histogram');
subplot(2,2,4);
plot(c2);
title('histogram of modified image');