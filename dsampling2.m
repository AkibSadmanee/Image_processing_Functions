function[]=dsampling2()
    a = imread('Board.bmp');
    [r,c]=size(a);
    img=zeros(r/2,c/2);

    i=1; j=1; k=1; l=1;

    for x=1:r
        for y=1:c
            if j+1 > c
                break;
            end
            s=a(i,j)+a(i,j+1)+a(i+1,j)+a(i+1,j+1);
            avg= s/4;
            img(k,l)=avg;
            l=l+1; j=j+2;
        end
        i=i+2;
        k=k+1;l=1;
    end
    disp(size(img));
    %plot(img)
    imshow(img);
end