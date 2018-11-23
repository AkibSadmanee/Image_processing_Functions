function [] = save2folder(img, counter)
destinationFolder = '/home/akib/Documents/MATLAB/';

if ~exist(destinationFolder, 'dir') mkdir(destinationFolder);

end

baseFileName = sprintf('l%d.bmp',counter);

fullFileName = fullfile(destinationFolder, baseFileName);

imwrite(img, fullFileName);
end