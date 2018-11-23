function[]=dsampling1()
    a = imread('Board.bmp');
    [r, c] = size(a);
    
    a = a(1:2:end, 1:2:end);  
    
    
    %Upsample
    img=ones(r,c);
    
    i=1; j=1; k=1; l=1;
    
    for x= 1:r/2
        for y= 1:c/2
            if y>=c/2-1
                break;
            end
            img(i,j) = a(k,l);
            img(i,j+1) = a(k,l);
            img(i+1,j) = a(k,l);
            img(i+1,j+1) = a(k,l);
            
            l=l+1; j=j+2;
        end
        k=k+1; i=i+2;
        j=1; l=1;
    end
    image(img);
    imshow(img);
    disp(size(img));
        
end