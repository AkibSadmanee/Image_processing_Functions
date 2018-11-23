function [] = brightnessUP()
    img = imread('football.jpg');
    
    subplot(2,2,1), imshow(img);
    subplot(2,2,3), histogram(img);
    
    g=60;
    [r,c,l]=size(img);
    for k = 1:l
        for i = 1:r
            for j = 1:c
                temp = img(i,j,k)+g;
                if temp <256
                    img(i,j,k) = temp;
                elseif temp > 255
                    img(i,j,k) = 255;
                end
            end
        end
    end
    
    subplot(2,2,2), imshow(img);
    subplot(2,2,4), histogram(img);
end