% File: morphology.m
% Desc: Proses morfologi dilasi dan erosi pada gambar RGB
% Date: 17 April 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

% Load image
img2 = imread('cat.jpg');

% Crop image
img3 = imcrop(img2,[100 50 200 200]);

% Ubah RGB to Black & White
img4 = im2bw(img3);

% Dilasi & Erosi
img5a = imdilate(img4,ones(3));
img5b = imerode(img4,ones(3));

% Tampilkan
subplot(2,3,1), imshow(img2), title('Gambar Asli');
subplot(2,3,2), imshow(img3), title('Crop');
subplot(2,3,3), imshow(img4), title('BW');
subplot(2,3,4), imshow(img5a), title('Dilasi');
subplot(2,3,6), imshow(img5b), title('Erosi');