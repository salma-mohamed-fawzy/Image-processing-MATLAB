clear;
load('89.mat')
my_image=cjdata.image; % this is for reading this pic
figure,imshow(my_image); % displaying this pic
figure,imhist(my_image); % histogram for original pic
% histogram for original pic is centeralized at gray levels (0-0.5)
histo_stretching=imadjust(my_image); % histogram stretching                 %firstmethod
figure,imshow(histo_stretching);  % displaying pic after stretching
% the pic after stretching is at high contrast
figure,imhist(histo_stretching);    %histogram after stretching
% histogram after stretching pic is centeralized at gray levels (-1-0)
histo_eq=histeq(my_image); %histogram equalization                          %second meyhod
figure,imshow(histo_eq);
% the pic after stretching is at low contrast
figure,imhist(histo_eq);  %histogram after equalization
% histogram after equalizing pic is distributed at gray levels (-1-3)
adapt_hist_eq=adapthisteq(my_image);
figure , imshow(adapt_hist_eq);  % Contrast limited adaptive histogram equalization
% the pic after stretching ,Picture details are not clear
figure,imhist(adapt_hist_eq);   % histogram of CLAHE
% histogram after equalizing pic is centeralized at gray levels (-1-1)
entropy=entropy(my_image);                                                   %third method

