function[img]= rgbtogrey(RGB)
    try
        if exist(RGB, 'file') == 2
           RGB=imread(RGB); 
        end
    catch
    end
    R=RGB(:,:,1);
    G=RGB(:,:,2);
    B=RGB(:,:,3);
    img=0.299 * R + 0.587 * G + 0.114 * B;