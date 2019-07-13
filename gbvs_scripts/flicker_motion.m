
close all
clear all
clc
tic

% some video sequence
i = 1;
N = 600;
GBVS = cell(1, N);
for imgi = 1 : N
    fname{i} = sprintf('C:/Users/Bernardo/Documents/2019_1/TCC 2/Frames/UTD/17_Frames_Resized/Image_resized%d.jpg',imgi);
%     fname{i} = sprintf('C:/Users/Bernardo/Documents/2019_1/TCC 2/Nantes/19_Touvet/Frames_Resized/Image_resized%d.jpg',imgi);
    i = i + 1;
end
% 
% dir = 'C:\Users\Bernardo\Documents\2019_1\TCC 2\UTD\1\1.mp4';
% vid=VideoReader(dir);
% numFrames = vid.NumberOfFrames;
% N=numFrames;
% for i = 1:1:4
%  fname{i} = read(vid,i);
%     end

% compute the saliency maps for this sequence

param = makeGBVSParams; % get default GBVS params
param.channels = 'IF';  % but compute only 'I' instensity and 'F' flicker channels
param.levels = 3;       % reduce # of levels for speedup

motinfo = [];           % previous frame information, initialized to empty
for i = 1 : N
    [out{i} motinfo] = gbvs( fname{i}, param , motinfo );
end
filename = ('C:/Users/Bernardo/Documents/2019_1/TCC 2/GBVS/17_GBVS.mat');
% save(filename,'out.master_map_resized','-v7.3');

% % display results
% % figure;
for i = 1 : N
% % %    subplot(2,N,i);    
% % %    imshow( imread(fname{i}) );
% % %    title( fname{i} );
% % %    subplot(2,N,N+i);
% % %    imshow( out{i}.master_map_resized );
 GBVS{i} = out{i}.master_map;
end
 save(filename,'GBVS','-v7.3');
toc