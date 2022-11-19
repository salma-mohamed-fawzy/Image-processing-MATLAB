clc
clear all
close all
% this is for reading this pic
load('89');
my_image=cjdata.image;
figure,imshow(my_image); % displaying this pic
title('Original Image')
edge_detected_image=edge(my_image,'canny');
figure,imshow(edge_detected_image);
title('Edge Detected Image');
%The noise must first be removed  
%removed the color, the background, and the other minute details from the pictures.
%We only have the edges, and you still able to identify the objects in the image.
