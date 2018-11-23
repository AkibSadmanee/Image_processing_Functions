function [] = cstretch()
    img = imread('test3.jpg');
    subplot(3,2,3), imshow(img);
    title('Original Image');
    subplot(3,2,5), histogram(img);
    title('Original Histogram');
    img = double(img);
    [r,c] = size(img);
    a = 10;
    mj=0;
    Mj=255;
    for i=1:r
    for j=1:c
    img(i,j) = mj+((Mj-mj) ./ (1+exp(-a*(img(i,j)-127)/255)));
    end
    end
    img = uint8(img);
    subplot(3,2,4), imshow(img);
    title('Stretched Image');
    subplot(3,2,6), histogram(img);
    title('Stretched Histogram');
    a = 5;
    x = 0:255;
    LUT = 255 ./ (1+exp(-a*(x-127)/32));
    subplot(3,2,1), plot(LUT);
    title('Original Function');
    
    LUT = mj+((Mj-mj) ./ (1+exp(-a*(x-127)/255)));
    subplot(3,2,2), plot(LUT);
    title('Changed Function');