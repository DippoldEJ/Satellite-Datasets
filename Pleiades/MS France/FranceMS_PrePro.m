close all;
clear;
clc;
%% read in the file from the directory
path = ('Polygon1_SO24012539-2-01_DS_PHR1B_202404231033373_FR1_PX_E005N43_0118_03298/6979456101/IMG_PHR1B_MS_002/');
imagefileMS = ('IMG_PHR1B_MS_202404231033373_SEN_6979456101-2_R1C1.JP2');

pathimage_MS = fullfile(path,imagefileMS);

MS16 = imread(pathimage_MS);

%% extraction of the single bands
red16 = MS16(:,:,1);
green16 = MS16(:,:,2);
blue16 = MS16(:,:,3);
nir16 = MS16(:,:,4);

%% 16 to 8 bits
red8 = uint8(255*mat2gray(red16 ));
green8  = uint8(255*mat2gray(green16 ));
blue8  = uint8(255*mat2gray(blue16 ));
nir8  = uint8(255*mat2gray(nir16 ));

%% Check the band order
rgb8 = cat(3, red8, green8, blue8);
cir8 = cat(3, nir8, red8, green8);

%% writing single bands to file
%tiff or compressed files like .jpg are good choices among others
imwrite(red8, 'red8.jpg'); 
imwrite(green8, 'green8.jpg'); 
imwrite(blue8, 'blue8.jpg'); 
imwrite(nir8, 'nir8.jpg'); 



