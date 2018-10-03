function[r]=dsampling1(val)
    a = imread('Board.bmp');
    %[r, c] = size(a)
    for i=1:val-1
        a = a(1:2:end, 1:2:end);  
    end
    imshow(a);
    
    %Upsample
    
    
end