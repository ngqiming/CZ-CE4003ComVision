% Obtain the image from the pc  
Pc = imread('');

whos Pc 


%Change to grey scale
p = rgb2gray(Pc);



%get min and max intensity 
minR =  double(min(p(:)));
maxR = double(max(p(:)));


%convert into decimal 
Pd = double(p);

%get min and max intensity 
minR = double(min(Pdn(:)));
maxR = double(max(Pdn(:)));

%Compute output of contrast stretching 
Pdn = ((Pd - minR )* 255)/ (maxR - minR);
%display new image 
imshow(uint8(Pdn));







 