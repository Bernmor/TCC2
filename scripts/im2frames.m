clear all
clc
% r = [8 9 10 11 12 13 14 17 18 19 20 21 22 23 24 25 26 27 28 29 30];
% [~, p] = size(r);
% for j = 1:1:p
dir = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Videos\H1.avi'];
folder = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Videos'];
vid=VideoReader(dir);
 numFrames = vid.NumberOfFrames;
 n=numFrames
  for i = 1:1:9
 frames = read(vid,i);
 filename = ['Image' int2str(i), '.jpg'];
 fullFileName = fullfile(folder, filename);
 imwrite(frames, fullFileName);
  end
% end
