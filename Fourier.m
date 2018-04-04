I=imread('sin3.PNG');

figure;
subplot(1,2,1),imshow(I),title('原图');
I=rgb2gray(I);%转换为灰度图

I=im2double(I);%转换成double类型，图像灰度值从0~255变成0~1

F=fft2(I);

F=fftshift(F);%象限变换
F=abs(F);
%F=real(F);%有的程序是求摸，有的是求实部

T=log(F+1);%保证取对数后还是正数

subplot(1,2,2),imshow(T,[]),title('Fourier');%imshow(T)只会显示[0,1]的值，而imshow(T,[]) 会根据灰度图的数值范围来显示图像