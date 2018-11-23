function [] = brightnessDOWN()
    img = imread('tissue.png');
    img = rgb2gray(img);
    subplot(2,2,1), imshow(img);
    subplot(2,2,3), histogram(img);
    
    g=70;
    [r,c,l]=size(img);
    for k = 1:l
        for i = 1:r
            for j = 1:c
                temp = img(i,j,k)-g;
                if temp <0
                    img(i,j,k) = 0;
                elseif temp >= 0
                    img(i,j,k) = temp;
                end
            end
        end
    end
    subplot(2,2,2), imshow(img);
    subplot(2,2,4), histogram(img);
end