function [] = monochrome_display()
    img = imread('onion.png');
    [r,c,l] = size(img);   
    R = img(:,:,1);
    G = img(:,:,2);
    B = img(:,:,3);
    
    zero_layer = zeros(r,c);  
    
    R_img=cat(3,R,zero_layer,zero_layer);      
    G_img=cat(3,zero_layer,G,zero_layer);  
    B_img=cat(3,zero_layer,zero_layer,B); 
    
    subplot(2,3,1), imshow(R_img, []),title('Red channel');
    subplot(2,3,4), hist(R_img);
    subplot(2,3,2), imshow(G_img, []),title('Green channel');
    subplot(2,3,5), hist(G_img);
    subplot(2,3,3), imshow(B_img, []),title('Blue channel');
    subplot(2,3,6), hist(B_img);
end