function [] = contrastUP()
    img = imread('pout.tif');
    alpha = 1.8;
    subplot(2,3,1), imshow(img);
    subplot(2,3,4), histogram(img);
    [r,c,l]=size(img);
    for k = 1:l
        for i = 1:r
            for j = 1:c
                temp = (alpha*(img(i,j,k)-70)) + 70;
                if temp < 0
                    img(i,j,k) = 0;
                elseif temp > 255
                    img(i,j,k) = 255;
                elseif temp >= 0 && temp <= 255
                    img(i,j,k) = temp;
                end
            end
        end
    end
    subplot(2,3,3), imshow(img);
    subplot(2,3,6), histogram(img);
end