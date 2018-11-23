function img = resampling2()
    a = imread('Board.bmp');    %Read image into "a"
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
    
    % Upsampling with Cloning method. Copy the value of 
        % a(1,1) to img(1,1), img(1,2), img(2,1), img(2,2) and continue
        %for every other cells of "a" matrix
        
    img=ones(r,c);  %Generate a matrix of 1024x1024 points
    
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
    error = abs(double(a)-double(img));
    error=norm(error);
end