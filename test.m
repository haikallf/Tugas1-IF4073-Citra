%{
img = imread('C:\Users\Haikal Lazuardi\Documents\Kampus\Semester7\Pengcit\Tugas\Tugas-1\img\image1.jpg');
a = 1;
b = 200;
[x,y,z] = size(img);
B = zeros(x, y, z, 'uint8');
for i = 1 : x
    for j = 1 : y
        for k = 1 : z
            temp = a * img(i, j, k) + b;
            if (temp < 0)
                B(i, j, k) = 0;
            elseif (temp > 255)
                B(i, j, k) = 255;
            else
                B(i, j, k) = temp;
            end
        end
    end
end
imshow(B, []);
title("Image 1")
%}

%{

% Read the image to be modified
a=imread('C:\Users\Haikal Lazuardi\Documents\Kampus\Semester7\Pengcit\Tugas\Tugas-1\img\image1.jpg');

% Convert to grayscale incase it is color
% a = rgb2gray(a);
b=size(a);
a=double(a);

% Loop for Getting the Histogram of the image
hist1 = zeros(1,256, b(3));
for i=1:b(1)
    for j=1:b(2)
        for l=1:b(3)
            for k=0:255
                if a(i,j,l)==k
                    hist1(k+1, l)=hist1(k+1, l)+1;
                end
            end
        end
    end
end

%Generating PDF out of histogram by diving by total no. of pixels
pdf=(1/(b(1)*b(2)))*hist1;

%Generating CDF out of PDF
cdf = zeros(1,256, b(3));

for l=1:b(3)
    cdf(1, l)=pdf(1, l);
    for i=2:256
        cdf(i, l)=cdf(i-1, l)+pdf(i, l);
    end
end
cdf = round(255*cdf);

ep = zeros(b, b(3));
for i=1:b(1)                                        %loop tracing the rows of image
    for j=1:b(2)                                   %loop tracing thes columns of image
        for l=1:b(3)
            t=(a(i,j, l)+1);                               %pixel values in image
            ep(i,j, l)=cdf(t, l);                             %Making the ouput image using cdf as the transformation function
        end
    end                                             
end

% Loop for Getting the Histogram of the image
hist2 = zeros(1,256, b(3));
for i=1:b(1)
    for j=1:b(2)
        for l=1:b(3)
            for k=0:255
                if ep(i,j, l)==k
                    hist2(k+1, l)=hist2(k+1, l)+1;
                end
            end
        end
    end
end

subplot(2,2,1);
imshow(uint8(a));
subplot(2,2,3);
imshow(uint8(ep));
subplot(2,2,2);
stem(hist1);
subplot(2,2,4);
stem(hist2);
%}

i=imread('C:\Users\Haikal Lazuardi\Documents\Kampus\Semester7\Pengcit\Tugas\Tugas-1\img\image1.jpg');
figure;
subplot(1,2,1);
imshow(i);
subplot(1,2,2);
imhist(i);

imh = imadjust(1, [0.3, 0.6], [0.0, 1.0]);
imh1 = histeq(i);
figure;
subplot(2,2,1);
imshow(imh1);
subplot(2,2,2);
imhist(imh1);