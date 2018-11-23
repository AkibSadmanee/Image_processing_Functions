function [] = contrastDOWN()
    a= imread('onion.png');
    subplot(2,3,1), imshow(a);
    subplot(2,3,4), histogram(a);
    
    alpha= 0.9;
    
    [r,c,l]=size(a);
    for k = 1:l
        for i = 1:r
            for j = 1:c
                a(i,j,k) = (alpha*(a(i,j,k)-90)) + 90;
            end
        end
    end
    subplot(2,3,3), imshow(a)
    subplot(2,3,6), histogram(a);
end