function [] = rgb2bw( RGB)
e=imread('onion.png');
z=rgb2gray(e);   
h=im2bw(z);
figure,imshow(h);
end

