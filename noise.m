clear;
load('89')
my_image=cjdata.image;  % this is for reading this pic
histo_stretching=imadjust(my_image); % histogram stretching
figure,imshow(histo_stretching);  % displaying pic after stretching
add_noise=imnoise(histo_stretching,'gaussian'); % adding noise to the pic which is stretched
figure,imshow(add_noise);  % displaying pic after adding noise
% after adding noise ,  details are not clear
histo_eq=histeq(my_image); %histogram equalization
figure,imshow(histo_eq); % displaying pic after equalization
% the pic after stretching is at low contrast
add_noise=imnoise(histo_eq,'gaussian'); % adding noise to the pic which is equalizes
figure,imshow(add_noise);  % displaying pic after adding noise
% after adding noise , a lot of details are not clear and the pic is blury
adapt_hist_eq=adapthisteq(my_image); % Contrast limited adaptive histogram equalization
figure , imshow(adapt_hist_eq);  % Contrast limited adaptive histogram equalization
% the pic after stretching ,Picture details are not clear
add_noise=imnoise(adapt_hist_eq,'gaussian'); % adding noise to the pic which is equalizes
figure,imshow(add_noise);  % displaying pic after adding noise
% after adding noise ,  all details are not clear and the pic is fully
% blured
