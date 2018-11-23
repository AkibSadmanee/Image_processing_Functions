function [] = poschange()
    pos1 = imread('pos1.png');
    %pos1 = rgb2gray(pos1);
    
    %subplot(2,1,1), imshow(pos1);
    pos2 = imread('pos2.png');
    %pos2 = rgb2gray(pos2);
    
    
    %subplot(2,1,2), imshow(pos2);
    
    img = (pos1 - pos2);
    img = img + img+ img;
    imshow(img);
end