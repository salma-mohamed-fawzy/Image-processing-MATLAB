clear;
load('89');
my_image = cjdata.image;
histo_stretching=imadjust(my_image); % histogram stretching
% the pic after stretching is at low contrast
SNR = snr(double(my_image),double(histo_stretching));

