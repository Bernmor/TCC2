clear
clc
% for j=2:1:12
path = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\GBVS\17_GBVS.mat'];
path2 = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Heatmaps\UTD\17_Heatmap.mat'];
path3 = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Métrica\'];
load(path);
load(path2);
scores = zeros(1, 600);
t = cell(1, 600);
f = cell(1, 600);
for i = 1:600
   A = cell2mat(GBVS([i])); 
   B = cell2mat(maps([i]));
   [score,tp,fp,allthreshes] = AUC_Judd(A, B, 1, 0);
   scores(i) = score;
   t([i])= {tp};
   f([i])= {fp};
end
% filename1 = [path3, int2str(j), '_tp'];
% filename2 = [path3, int2str(j), '_fp'];
% filename3 = [path3, int2str(j), '_scores'];
% save(filename1,'t','-v7.3');
% save(filename2,'f','-v7.3');
% save(filename3,'scores','-v7.3');
% end

filename1 = [path3, '17_tp'];
filename2 = [path3, '17_fp'];
filename3 = [path3, '17_scores'];
save(filename1,'t','-v7.3');
save(filename2,'f','-v7.3');
save(filename3,'scores','-v7.3');