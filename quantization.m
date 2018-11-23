function[] = quantization()
   a=imread('Board.bmp');
   [r,c]=size(a);
   img=ones(1024);
   for i=1:r 
    for j=1:c
      if rem(a(i,j),2)==0
        img(i,j)=a(i,j) +1;
      
      else
        img(i,j)=a(i,j);
      end
    end
   end  
       
   image(img);
   imshow(img,[]);
    
end