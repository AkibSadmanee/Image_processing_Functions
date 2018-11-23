function error = resampling1()
        a = imread('Board.bmp');    %Read image into "a"
        [r, c] = size(a);           %Get size of the real image
        
        a = a(1:2:end, 1:2:end);    %Remove evry other row and column 
        
        
        
        % Upsampling with Cloning method. Copy the value of 
        % a(1,1) to img(1,1), img(1,2), img(2,1), img(2,2) and continue
        %for every other cells of "a" matrix
        
        img=ones(r,c);           %Generate a matrix of 1024x1024 points
        i=1; j=1; k=1; l=1;
        for x= 1:r/2
            for y= 1:c/2
                if y>=c/2-1
                    break;
                end
                
                %Update img matrix points
                img(i,j) = a(k,l);
                img(i,j+1) = a(k,l);
                img(i+1,j) = a(k,l);
                img(i+1,j+1) = a(k,l);
                
                l=l+1; j=j+2;
            end
            k=k+1; i=i+2;
            j=1; l=1;
        end
        %image(img);         %Convert "img" matrix to an image
        %imshow(img);
        
        a = imread('Board.bmp');
        error=abs(double(a)-double(img));
        error=norm(error);
    end