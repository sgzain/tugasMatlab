[num, txt] = xlsread('KECERDASAN BUATAN.xlsx','C9:C40');
[num, txt2] = xlsread('KECERDASAN BUATAN.xlsx','D9:D40');
txt3 = xlsread('KECERDASAN BUATAN.xlsx','B9:B40');
nn = length(txt);
ffd = [];
for k = 1 : nn;
data=txt(k);
data;
data1 = cell2mat(data);
str = sscanf(data1, '%s',1 );
n = length(str);
str2 = sscanf(data1(n+2:end), '%s',1 );
s = randi([35 38]);s =char(s);
s1 = randi([48 57]);s1=char(s1);
s3 = randi([65 90]);s3=char(s3);
ffd1 = [txt3(k) {d} {str} {str2} txt2(k)];
sd = strcat('A',num2str(k+1));
xlswrite('KECERDASAN BUATAN.csv', ffd1,'Sheet1',sd);
end
