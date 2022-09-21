function stretchedImage = contrastStretching(img)
    grayscaleImage = im2gray(img);
    r1 = min(grayscaleImage(:));
    r2 = max(grayscaleImage(:));
    s1 = 10;
    s2 = r2;
    
    a = s1 / r1;
    b = (s2 - s1) / (r2 - r1);
    c = (255 - s2) / (255 - r2);

    [x, y, z] = size(img);
    B = zeros(x, y, z, 'uint8');
    for i = 1 : x
        for j = 1 : y
            for k = 1 : z
                if (img(i, j, k) <= r1)
                    B(i, j, k) = a * img(i, j, k);
                elseif (img(i, j, k) > r1 && img(i, j, k) <= r2)
                    B(i, j, k) = (b * (img(i, j, k) - r1)) + s1;
                else
                    B(i, j, k) = (c * (img(i, j, k) - r2)) + s2;
                end
            end
        end
    end
    stretchedImage = B;
end