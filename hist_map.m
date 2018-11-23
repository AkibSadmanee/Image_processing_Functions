function [] = hist_map()
    im1=imread('pout.tif');
    im2=imread('onion.png');
    M = zeros(256,1,'uint8'); %// Store mapping - Cast to uint8 to respect data type
    hist1 = imhist(im1); %// Compute histograms
    hist2 = imhist(im2);
    cdf1 = cumsum(hist1) / numel(im1); %// Compute CDFs
    cdf2 = cumsum(hist2) / numel(im2);

    %// Compute the mapping
    for idx = 1 : 256
        [~,ind] = min(abs(cdf1(idx) - cdf2));
        M(idx) = ind-1;
    end

    %// Now apply the mapping to get first image to make
    %// the image look like the distribution of the second image
    out = M(double(im1)+1);

    subplot(2,3,1),imshow(im1)
    subplot(2,3,4),imhist(im1)
    subplot(2,3,2),imshow(im2)
    subplot(2,3,5),imhist(im2)
    subplot(2,3,3),imshow(out)
    subplot(2,3,6),imhist(out)
end