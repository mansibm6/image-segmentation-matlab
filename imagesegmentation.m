function [count, binaryImage, boundaries] = imagesegmentation(filename)
%IMAGESEGMENTATION Threshold an image and count boundaries (including holes).
% Preserves the original bwboundaries counting convention.
if nargin < 1, filename = fullfile(fileparts(mfilename('fullpath')), 'blood3.png'); end
img1=imread(filename);
if size(img1, 3) == 3
    img1=rgb2gray(img1);
end
imshow(img1)
hold on

img2=imbinarize(img1,graythresh(img1)); % graythresh finds a threshold value using Otsu's method and imbinarize uses this value to convert to binary image
imshow(img2)
img2=~img2;
imshow(img2)
hold on

B=bwboundaries(img2);
count = length(B);
binaryImage = img2;
boundaries = B;
imshow(img2)

text(100,10,strcat('\color{red}Objects Found:',num2str(length(B))))
hold on

end
