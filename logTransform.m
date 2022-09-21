function transformedImage = logTransform(img, a)
    [x, y, z] = size(img);
    B = im2double(img);
    for i = 1 : x
        for j = 1 : y
            for k = 1 : z
                temp = a * log(1 + B(i, j, k));
                if (temp < 0)
                    B(i, j, k) = 0;
                elseif (temp > 255)
                    B(i, j, k) = 255;
                else
                    B(i, j, k) = temp;
                end
            end
        end
    end
    transformedImage = B;
end