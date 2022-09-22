function imageOutput = histogramSpecificationRGB(img)
% Get image size
x = size(img, 1);
y = size(img, 2);

% Create matrix of zeros
R = zeros(r, c, 3);
G = zeros(r, c, 3);
B = zeros(r, c, 3);

% Get RGB pixel values

% red plane
R(:, :, 1) = img(:, :, 1);
  
% green plane
G(:, :, 2) = img(:, :, 2);
  
% blue plane
B(:, :, 3) = img(:, :, 3);

imageOutputR = histogramSpecification(R)
imageOutputG = histogramSpecification(G)
imageOutputB = histogramSpecification(B)

imageOutput(:, :, 1) = imageOutputR(:, :, 1)
imageOutput(:, :, 2) = imageOutputG(:, :, 2)
imageOutput(:, :, 3) = imageOutputB(:, :, 3)

imageOutput = cat(3, imageOutputR, imageOutputG, imageOutputB);

end