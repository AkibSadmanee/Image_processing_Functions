function [] = gammaUP()
    img = imread('football.jpg');
    
    subplot(2,3,1), imshow(img);
    subplot(2,3,4), histogram(img);
    
    img=double(img);
    
    gamma = 2;
    [r,c,l] = size(img);
    
    for k = 1:l
        for i = 1:r
            for j = 1:c
                img(i,j,k) = ((img(i,j,k)/255)^(1/gamma))*255;
            end
        end
    end
    img = uint8(img);
    
    subplot(2,3,3), imshow(img);
    subplot(2,3,6), histogram(img);
end