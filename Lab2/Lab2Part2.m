%Qn 3.2 Finding line using Hough Transform
%Read image
i = imread('');
%change from colour to gray scale
ig = rgb2gray(i);

% declare inputs for canny algorithm
tl = 0.04; th = 0.1; sigma = 1.0;

%obtain edge output using canny algorithm 
E = edge(ig, 'canny', [tl th], sigma);

%Use radoon transform
[H,xp] = radon(E);
%imshow(uint8(H));

imagesc(H);
theta = 103;
radius = xp(157);
[A,B] = pol2cart(theta *pi /180,radius);
B = -B;
C = A*(A+179) + B *(B+145);

%disp(A);
%disp(B);
%disp(C);

%Given xl = 0, xr =358-1 = 357;
xl = 0;
xr = 357;
yl = (C-A*xl)/B;
yr = (C-A*xr)/B;

%disp(yl);
%disp(yr);
%imshow(ig);
%line([xl xr], [yl,yr]);



