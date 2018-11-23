function [] = charDetect()
    bw= imread('Bangla_testocr.bmp');
    bw=im2bw(bw);
    [r,c]=size(bw);
    
    lock=false;
    
    line=[];
    counter=1;  
    
    for i=1:r
        for j=1:c
           if bw(i,j) == 0 && lock==false
               lock = true;
               line=[];
               line=[line; bw(i,:)];
               break
           elseif lock == true && bw(i,j)==0
               line=[line; bw(i,:)];
               break
           elseif lock == true && j == c
               lock = false;              
               charDetect2(line,counter);
               counter = counter +1 ;
           end
        end
    end
end