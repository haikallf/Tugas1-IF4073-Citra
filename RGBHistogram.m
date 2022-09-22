function histogram = RGBHistogram(img)
    [x, y] = size(img);
    y_axis = 1 : 256;
    count = 0; 
    for i = 1 : 256
        for j = 1 : x
            for k = 1 : y
                if img(j, k) == i - 1
                    count = count + 1;
                end
            end
        end
        y_axis(i) = count;
        count = 0;  
    end
    x_axis = 0 : 255;
    histogram = bar(x_axis, y_axis, 'BarWidth', 0.5);
end