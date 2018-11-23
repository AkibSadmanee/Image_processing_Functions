function[]=dsampling2()
    a = imread('Board.bmp');
    [r,c]=size(a);
    img=zeros(r/2,c/2);

    i=1; j=1; k=1; l=1;

    for x=1:r
        for y=1:c
            if j+1 > c
                break;
                
            elseif i+1 > r
                break;
                
            end
            s=a(i,j)+a(i,j+1)+a(i+1,j)+a(i+1,j+1);
            avg= s/4;
            img(k,l)=avg;
            l=l+1; j=j+2;
        end
        
        i=i+2; j=1;
        k=k+1; l=1;
    end
    %image(img);
    %imshow(img);
    
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
    %image(img);
    %imshow(img);
    error=double(a)-double(img);
    
    %imshow(error, []);
end