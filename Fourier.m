I=imread('sin3.PNG');

figure;
subplot(1,2,1),imshow(I),title('ԭͼ');
I=rgb2gray(I);%ת��Ϊ�Ҷ�ͼ

I=im2double(I);%ת����double���ͣ�ͼ��Ҷ�ֵ��0~255���0~1

F=fft2(I);

F=fftshift(F);%���ޱ任
F=abs(F);
%F=real(F);%�еĳ������������е�����ʵ��

T=log(F+1);%��֤ȡ������������

subplot(1,2,2),imshow(T,[]),title('Fourier');%imshow(T)ֻ����ʾ[0,1]��ֵ����imshow(T,[]) ����ݻҶ�ͼ����ֵ��Χ����ʾͼ��