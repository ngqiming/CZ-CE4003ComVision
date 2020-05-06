%3.3 3D Strero
left = imread('');
left = rgb2gray(left);
%imshow(left);   

right = imread('C:\Users\NG QI MING\Desktop\Year4 Sem1\CE4003ComputerVision\Lab\triclopsi2r.jpg');
right = rgb2gray(right);
%imshow(right);   

%get the Disparity 
d= map(left, right, 11, 11);
imshow(d, [-15,15]);

%res = imread('C:\Users\NG QI MING\Desktop\Year4 Sem1\CE4003ComputerVision\Lab\triclopsid.jpg');
%imshow(res);


%function to calculate 
function ret = map(image_l, image_r, xtemp, ytemp)
% Fuction to calculate disparity map

% calculate half size of template
dim_x = floor(xtemp/2);
dim_y = floor(ytemp/2);

% image_l and image_r must have the same size
[x, y] = size(image_l);

%initialize
ret = ones(x - xtemp + 1, y - ytemp + 1);

for i = 1+dim_x : x-dim_x
    for j = 1+dim_y : y-dim_y
        cur_r = image_l(i-dim_x: i+dim_x, j-dim_y: j+dim_y);
        cur_l = rot90(cur_r, 2);
        min_coor = j; 
        min_diff = inf;
        
        % search for simmilar pattern in right image
        
        for k = max(1+dim_y , j-14) : j
            T = image_r(i-dim_x: i+dim_x, k-dim_y: k+dim_y);
            cur_r = rot90(T, 2);
            
            % Get the ssd and update minimum diff
            conv_1 = conv2(T, cur_r);
            conv_2 = conv2(T, cur_l);
            ssd = conv_1(xtemp, ytemp) - 2 * conv_2(xtemp, ytemp);
            if ssd < min_diff
                min_diff = ssd;
                min_coor = k;
            end
        end
        ret(i - dim_x, j - dim_y) = j - min_coor;
    end
end
end


    
     
    
            
            
            
            
           

