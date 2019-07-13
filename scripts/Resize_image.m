close all
clear all
clc
tic
for j = 1:1:600
dir = ['C:/Users/Bernardo/Documents/2019_1/TCC 2/Nantes/19_Touvet/19_Frames/Image' int2str(j), '.jpg'];
folder = ['C:/Users/Bernardo/Documents/2019_1/TCC 2/Nantes/19_Touvet/Frames_Resized'];
img = imread(dir);
img2 = imresize( img , [1080 1920] , 'bicubic' );
filename = ['Image_resized' int2str(j), '.jpg'];
fullFileName = fullfile(folder, filename);
imwrite(img2, fullFileName);

end
toc