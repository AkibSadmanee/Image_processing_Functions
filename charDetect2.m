function [] = charDetect2(bw,line_counter)
    [r,c]=size(bw);
    lock=false;
    counter=1;
    char=[];  
    for i=1:c
        for j=1:r
           if bw(j,i) == 0 && lock==false
               lock = true;
               char=[];
               char=[char, bw(:,i)];
               break
               
           elseif lock == true && bw(j,i)==0
               char=[char, bw(:,i)];
               break
               
           elseif lock == true && j == r
               lock = false;           
               %Save images to destination folder
               destinationFolder = '/home/akib/Documents/MATLAB/';
               if ~exist(destinationFolder, 'dir') 
                   mkdir(destinationFolder);
               end
               baseFileName = sprintf('bl%d_s%d.png',line_counter, counter);
               fullFileName = fullfile(destinationFolder, baseFileName);
               imwrite(char, fullFileName);
               counter = counter +1 ;
           end
        end
    end
end