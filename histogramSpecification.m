function specifiedImage = histogramSpecification(img, refImg)
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

    %%%
    [xRef, yRef] = size(refImg);
    refHist = zeros(1, 256);
    for i = 1 : xRef
        for j = 1 : yRef
            for k = 0 : 255
                if refImg(i, j) == k
                    refHist(k + 1) = refHist(k + 1) + 1;
                end
            end
        end 
    end

    probabilityRef = (1 / (xRef * yRef)) * refHist;
    cumulativeRef = 1 : 256;

    for i = 1 : 256
        if (i == 1)
            cumulativeRef(i) = probabilityRef(i);
        else
            cumulativeRef(i) = probabilityRef(i) + cumulativeRef(i-1);
        end
    end
    cumulativeRef = round(255 * cumulativeRef);
    %%%
    
    dFunc = 255 * ones(1, 256);
    for k = 1 : 256
        for l = 1 : 256
            if cumulative(k) < cumulativeRef(l)
                dFunc(k) = l;
                break
            end
        end
    end
    
    outputImg = ones(x, y);
    for i = 1 : x
        for j = 1 : y
            temp = img(i, j) + 1;
            outputImg(i, j) = dFunc(temp);
        end
    end

    %%%

    specifiedImage = outputImg;
end