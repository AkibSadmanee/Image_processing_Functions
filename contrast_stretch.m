function [] = contrast_stretch()
    img = imread('pout.tif');
    
    subplot(2,3,1), imshow(img);
    subplot(2,3,4), histogram(img);
    [r,c,l]=size(img);
    
    img = double(img);
    
    mi=74;
    Mi=224;
    mj=0;
    Mj=255;
    
    
    for k = 1:l
        for i = 1:r
            for j = 1:c
                img(i,j,k) = (((Mj-mj)*(img(i,j,k)-mi))/(Mi-mi))+mj;
            end
        end
    end
    img = uint8(img); 
    subplot(2,3,3), imshow(img);
    subplot(2,3,6), histogram(img);
    disp(min(min(img)))
    disp(max(max(img)))
end