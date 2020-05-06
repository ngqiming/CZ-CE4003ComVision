% Obtain the image from the pc  
Pc = imread('');
 %Display image intensity  using 10 bins
 %imhist(Pc,10); 
 %imhist(Pc,255);
 
 %Display result for histogram equalization 
 P3 = histeq(Pc,255);
 
 %Display intensity
 %imhist(P3,255);
 imshow(P3);