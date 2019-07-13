clear 
clc
% path = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Métrica\1_tp'];
% path2 = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Métrica\1_fp'];
% path3 = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\GBVS\1_GBVS'];
path4 = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Heatmaps\UTD\1_Heatmap']
% load(path);
% load(path2);
% load(path3);
load(path4);

for i = 1:9
%   tp = cell2mat(t([i]));
%   fp = cell2mat(f([i]));
%   saliencyMap = cell2mat(GBVS([i]));
  fixationMap = cell2mat(maps([i]));
%   img2 = imresize( a , [1080 1920] , 'bicubic' );

  figure(i);
%   subplot(121); imshow(saliencyMap, []); title('SaliencyMap with fixations to be predicted');
%     hold on;
%     [y, x] = find(fixationMap);
%     plot(x, y, '.r');
%     subplot(122); plot(fp, tp, '.b-');   title(['Area under ROC curve: '])
   img = imshow(fixationMap)
  
end