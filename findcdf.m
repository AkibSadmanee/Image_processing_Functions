function [cdf] = findcdf(I)
    [r,c] = size(I);
    %number of pixels
    n = r*c;
    
    K = zeros(r,c);

    % frequency pdf and cdf and some variables
    f = zeros(256,1);
    pdf = zeros(256,1);
    cdf = zeros(256,1);
    out = zeros(256,1);
    cum = zeros(256,1);


    % Nested for loop

    for i = 1:r
        for j = 1:c
            value = I(i,j);
            f(value+1) = f(value+1)+1;
            pdf(value+1) = f(value+1)/n;
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
end