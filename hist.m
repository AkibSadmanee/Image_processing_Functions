function []= hist(img)
    [r,c,l] = size(img);
    hist_list_R = zeros(1,256);
    hist_list_G = zeros(1,256);
    hist_list_B = zeros(1,256);
    hist_list_intensity = zeros(1,256);
    for k= 1:l
        for i=1:r
            for j=1:c
                if k==1
                    hist_list_R(img(i,j,k)+1) = hist_list_R(img(i,j,k)+1) +1;
                elseif k==2
                    hist_list_G(img(i,j,k)+1) = hist_list_G(img(i,j,k)+1) +1;
                elseif k==3
                    hist_list_B(img(i,j,k)+1) = hist_list_B(img(i,j,k)+1) +1;
                end
            end
        end
    end
    img = rgbtogrey(img);
    for i = 1: r
        for j = 1:c
            hist_list_intensity(img(i,j)+1) = hist_list_intensity(img(i,j)+1) +1;
        end
    end
    
    lut= linspace(0,255,256);
    hold on;
    plot(lut,hist_list_R, '-r');
    plot(lut,hist_list_G, '-g');
    plot(lut,hist_list_B, '-b');
    plot(lut,hist_list_intensity, '-k');
    hold off;
    
end