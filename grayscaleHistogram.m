function histogram = grayscaleHistogram(img)
    [x, y] = size(img);
    y_axis = zeros(1, 256);
    for i = 1 : x
        for j = 1 : y
            for k = 0 : 255
                if img(i, j) == k
                    y_axis(k + 1) = y_axis(k + 1) + 1;
                end
            end
        end 
    end
    x_axis = 0 : 255;
    histogram = bar(x_axis, y_axis, 'BarWidth', 0.5);
end