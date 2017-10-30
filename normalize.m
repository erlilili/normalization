stop = rgb2gray(imread('D:\curriculum\Digital Image Processing\HW\data_3\data\StopSign.jpg'));
tem = rgb2gray(imread('D:\curriculum\Digital Image Processing\HW\data_3\data\StopSignTemplate.jpg'));
c = normxcorr2(tem,stop);
[ypeak, xpeak] = find(c==max(c(:)));
yoffSet = ypeak-size(tem,1);
xoffSet = xpeak-size(tem,2);
imshow(stop,'Parent',axes);
rectangle('Position', [xoffSet+1, yoffSet+1, size(tem,2), size(tem,1)]);
