function brightenedImage = imageBrightening(img, a, b)
    [x,y,z] = size(img);
    B = zeros(x, y, z, 'uint8');
    for i = 1 : x
        for j = 1 : y
            for k = 1 : z
                temp = a * img(i, j, k) + b;
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
    brightenedImage = B;
end
