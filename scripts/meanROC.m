clear 
clc
barra = zeros(1, 7);
temp = [7 8 9 10 11 12 14 17];
for i = 1:7
    path = ['C:\Users\Bernardo\Documents\2019_1\TCC 2\Métrica\' int2str(temp(i)), '_scores'];
    s = load(path);
    s = cell2mat(struct2cell(s));
    mean = (sum(s))/600;
    barra(i) = mean;
end
x = [8 9 10 11 12 14 17];
b = bar(x, barra);
b.FaceColor = 'flat';
b.CData(2,:) = [.5 0 .5];