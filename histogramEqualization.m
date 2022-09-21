function equalizedImage = histogramEqualization(img)
    [x, y] = size(img);

    inputHist = zeros(1, 256);
    for i = 1 : x
        for j = 1 : y
            for k = 0 : 255
                if img(i, j) == k
                    inputHist(k + 1) = inputHist(k + 1) + 1;
                end
            end
        end 
    end

    probability = (1 / (x * y)) * inputHist;
    cumulative = 1 : 256;

    for i = 1 : 256
        if (i == 1)
            cumulative(i) = probability(i);
        else
            cumulative(i) = probability(i) + cumulative(i-1);
        end
    end

    cumulative = round(255 * cumulative);
    outputImg = ones(x, y);
    
    for i = 1 : x
        for j = 1 : y
            temp = img(i, j) + 1;
            outputImg(i, j) = cumulative(temp);
        end                                             
    end

    equalizedImage = outputImg;
end