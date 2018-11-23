function [] = median()
    img = imread('c_saltpepper.jpg');
    img = rgb2gray(img);
    [r,c,l] = size(img);
    
    grid_vals = zeros(1,9);
    
    for k = 1:l
    for i = 2:r-1
        for j = 2:c-1
            grid_vals(1,1) = img(i-1,j-1,k);
            grid_vals(1,2) = img(i,j-1,k);
            grid_vals(1,3) = img(i+1,j-1,k);
            grid_vals(1,4) = img(i-1,j,k);
            grid_vals(1,5) = img(i,j,k);
            grid_vals(1,6) = img(i+1,j,k);
            grid_vals(1,7) = img(i-1,j+1,k);
            grid_vals(1,8) = img(i,j+1,k);
            grid_vals(1,9) = img(i+1,j+1,k);
            
            grid_vals = sort(grid_vals);
            median = grid_vals(1,5);
            img(i,j,k) = median;
        end
    end
    end
    %imshow(img);
    org = imread('c.png');
    
    org = org-img;
    org = org + org + org;
    imshow(org);
end