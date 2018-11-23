function [] = imavg()
    %% Normal mode image
    n1 = imread('n1.jpg');
    n1=double(n1);
    
    n2 = imread('n2.jpg');
    n2=double(n2);
    
    n3 = imread('n3.jpg');
    n3=double(n3);
    
    n4 = imread('n4.jpg');
    n4=double(n4);
    
    n5 = imread('n5.jpg');
    n5=double(n5);
    
    navg = n1+n2+n3+n4+n5;
    navg = navg./5;
    
    navg = uint8(navg);
    subplot(2,3,1),imshow(navg), title('Normal mode');
    subplot(2,3,4),histogram(navg), title('Normal mode Histogram');

    %% Burst mode
    b1 = imread('b1.jpg');
    b1=double(b1);
    
    b2 = imread('b2.jpg');
    b2=double(b2);
    
    b3 = imread('b3.jpg');
    b3=double(b3);
    
    b4 = imread('b4.jpg');
    b4=double(b4);
    
    b5 = imread('b5.jpg');
    b5=double(b5);
    
    bavg = b1+b2+b3+b4+b5;
    bavg = bavg./5;
    
    bavg = uint8(bavg);
    subplot(2,3,2),imshow(bavg), title('Burst mode');
    subplot(2,3,5),histogram(navg), title('Burst mode Histogram');

    %% Comparison
    dif = navg-bavg;
    subplot(2,3,3),imshow(dif), title('Difference -> Normal mode - Burst Mode');
    subplot(2,3,6), histogram(dif), title('Difference Histogram');
end