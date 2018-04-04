#!/usr/bin/env.python
#!/usr/bin/env.python
import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt

img = cv.imread('Joseph_Fourier_250.jpg', 0)
f = np.fft.fft2(img)  # 快速傅里叶变换算法得到频率分布
fshift = np.fft.fftshift(f)  # 默认结果中心点位置是在左上角，转移到中间位置

fimg = np.log(np.abs(fshift)+1)  # fft 结果是复数，求绝对值结果才是振幅(化为实数）
fimg0=np.log(np.abs(f)+1)  #取对数可以将数据变化范围缩小

# 展示结果
plt.subplot(131), plt.imshow(img, 'gray'), plt.title('Original Fourier')
plt.subplot(132), plt.imshow(fimg0, 'gray'), plt.title('Fourier Fourier')
plt.subplot(133), plt.imshow(fimg, 'gray'), plt.title('Fourier Fourier-shift')
plt.show()