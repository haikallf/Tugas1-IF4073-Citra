function transformedImage = powerTransform(img, a, b)
    [x,y] = size(img);
    B = im2double(img);
    for i = 1 : x
        for j = 1 : y
                temp = a * (B(i, j) ^ b);
                if (temp < 0)
                    B(i, j) = 0;
                elseif (temp > 255)
                    B(i, j) = 255;
                else
                    B(i, j) = temp;
                end
        end
    end
    transformedImage = B;
end