%3.1 Edge Detection
%Read image
i = imread('');
%Convert from RGB to gray
ig = rgb2gray(i);
%Display image
%imshow(ig);

%Create a sobel 3x3 horizontal matrix 
%sobelH = [-1 -2 -1; 0 0 0; 1 2 1]; 
%Create a sobel 3x3 horizontal matrix 
%sobelV = [-1 0 1; -2 0 2; -1 0 1];

%outputH = conv2(ig, sobelH, 'same');
%outputV = conv2(ig, sobelV, 'same');
%imshow(uint8(outputH));
%imshow(uint8(outputV));

%outputImage = (power(outputH,2) + power(outputV,2)); 
%outputImage = outputImage> 10000;
%imshow(outputImage);
%outputImage = outputImage> 20000;
%imshow(outputImage);
%outputImage = outputImage> 30000;
%imshow(outputImage);
%outputImage = outputImage> 40000;
%imshow(outputImage);
%outputImage = outputImage> 50000;
%imshow(outputImage);

tl = 0.04; th = 0.1; sigma = 1.0;
%sigma = [1.0, 2.0, 3.0, 4.0, 5.0];
%sigma1 = 1.0;
%tls = [0.01, 0.07, 0.09]

E = edge(ig, 'canny', [tl th], sigma);
%E = edge(ig, 'canny', [tl th], sigma(2));
%E = edge(ig, 'canny', [tl th], sigma(3));
%E = edge(ig, 'canny', [tl th], sigma(4));
%E = edge(ig, 'canny', [tl th], sigma(5));

%E = edge(ig, 'canny', [tls(1) th], sigma1);
%E = edge(ig, 'canny', [tls(2) th], sigma1);
%E = edge(ig, 'canny', [tls(3) th], sigma1);
imshow(E);


