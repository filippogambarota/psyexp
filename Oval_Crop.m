%%%%%%%%%%% OVAL CROP %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% author: Filippo Gambarota
% date: 2019

% This script is useful for cirle cropping where x and y position of the
% crop area is the same among images

% User has to define:
    % image type in the directory
    % x,y,w,h value for the crop
    

im_type = '*.bmp*'; % substitute only letters

mkdir("Cropped Images") % folder for cropped images

im_name = dir(fullfile(cd, im_type)); % this store all filename
 
x = 10;
y = 8;
w = 105; %width
h = 160; %height

%%%% This create a MASK based on user defined values
% for the mask an image is loaded, then image axis are used for creating a
% cirle based on x,y,w,h values. Then a Mask is created for cropping.

im_mask = imread(im_name(1).name); 
imshow(im_mask); %needed to use imellipse
ellipse = imellipse(gca,[x y w h]); % creates user defined ellipse object.
MASK = double(ellipse.createMask());
close;

% This loop load each image in the directory, change the extension to .png
% for trasparency and cropping and finally write a new image in the 'crop'
% folder applying the mask.
 
for i = 1:numel(im_name)
    im = imread(im_name(i).name);
    im_name(i).name = strrep(im_name(i).name,'bmp','png');
    imwrite(im, fullfile(cd,'Cropped Images',im_name(i).name), "png", "Alpha",MASK);
end