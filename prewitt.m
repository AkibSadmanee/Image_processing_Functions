function[] = prewitt()
    a = imread('assignment_6.jpg');
    a= rgb2gray(a);
    b = im2double(a);
    [m,n] = size(b);
    k = zeros(m,n);
    k = double(k);
    for i = 2:m-1
        for j = 2:n-1
            Gx2 = (b(i+1,j-1) + b(i+1,j) + b(i+1,j+1)) - (b(i-1,j-1) + b(i-1,j) + b(i-1,j+1));
            Gy2 = (b(i-1,j+1) + b(i,j+1) + b(i+1,j+1)) - (b(i-1,j-1) + b(i,j-1) + b(i+1,j-1));
            k(i,j) = sqrt(Gx2.^2 + Gy2.^2);
        end
    end
    k = uint8(k) + a;
    imshow(k);   
end