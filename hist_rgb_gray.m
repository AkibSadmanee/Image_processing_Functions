function [] = hist_rgb_gray(img)
    [r,c,l] = size(img);
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);
    
    value = (R+G+B)./3;
    subplot(2,3,1),imshow(value), title('Grey by value');
    subplot(2,3,4),hist(value), title('Value Histogram');
    
    lumi = 0.299 * R + 0.587 * G + 0.114 * B;
    subplot(2,3,3),imshow(lumi), title('Grey by Luminosity');
    subplot(2,3,6),hist(lumi), title('Luminosity Histogram');
    
end