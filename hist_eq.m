function [] = hist_eq()
%% read Image and Display
    test = imread('test3.jpg'); %read image
    subplot(2,2,1),imshow(test); title('Original Image');
    subplot(2,2,3), histogram(test); title('Original Histogram')

    %% Histogram equalization without matlab function
    I = test; 

    % size of the input image.
    [r,c,l] = size(I); 

    % uint 8 blamk canvas
    blank = uint8(zeros(r,c,l));

    % number of pixels.
    n = r*c*l;

    % frequency pdf and cdf and some variables
    f = zeros(256,1);
    pdf = zeros(256,1);
    cdf = zeros(256,1);
    out = zeros(256,1);
    cum = zeros(256,1);


    % Nested for loop
    for k = 1:l
        for i = 1:r
            for j = 1:c
                value = I(i,j,k);
                f(value+1) = f(value+1)+1;
                pdf(value+1) = f(value+1)/n;
            end
        end
    end
    % finding cdf
    sum = 0;
    L = 255;

    for i = 1:size(pdf)
        sum = sum + f(i);
        cum(i) = sum;
        cdf(i) = cum(i)/n;
        out(i) = round(cdf(i)*L);
    end
    
    for k = 1:l
        for i = 1:r
            for j = 1:c
                blank(i,j,k) = out(I(i,j,k)+1);
            end
        end
    end

    subplot(2,2,2),imshow(blank); title('Histogram-equalized Image');
    subplot(2,2,4), histogram(blank); title('Histogram-equalized Histogram');

