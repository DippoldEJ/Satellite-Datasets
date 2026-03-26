close all;
clear;
clc;
%%
path = ('WO_000194893_1_1_SAL24178558-1_ACQ_PNEO4_03900110291627/000194893_1_1_STD_A/IMG_01_PNEO4_MS-FS');
imagefileNED = ('IMG_PNEO4_202401241018189_MS-FS_SEN_PWOI_000194893_1_1_F_1_NED_R1C1.JP2');
imagefileMS = ('IMG_PNEO4_202401241018189_MS-FS_SEN_PWOI_000194893_1_1_F_1_RGB_R1C1.JP2');

pathimage_MS = fullfile(path,imagefileMS);
pathimage_NED = fullfile(path,imagefileNED);

MS16 = imread(pathimage_MS);% red, green and blue
NED16 = imread(pathimage_NED); % NIR, red edge and deep blue

%% Preprocessing

% extraction of the single bands
red16 = MS16(:,:,1);
green16 = MS16(:,:,2);
blue16 = MS16(:,:,3);
NIR16 = NED16(:,:,1);
% 16 to 8 bits
red = uint8(255*mat2gray(red16 ));
green  = uint8(255*mat2gray(green16 ));
blue  = uint8(255*mat2gray(blue16 ));
nir  = uint8(255*mat2gray(NIR16));

red = imadjust(red); 
green = imadjust(green); 
blue = imadjust(blue); 
nir = imadjust(nir); 

% Check the band order
rgb = cat(3, red, green, blue);
cir = cat(3, nir, red, green);

%% AOI

aoi1 = rgb(1300:1450,3350:3500,:); % MS Pleiades rural
% imshow(aoi1)

aoi2 = rgb(2050:2200,4500:4750,:); %  MS Pleiades building
aoi3 = rgb(5700:6500,5500:6000,:);
aoi4 = rgb(3300:4000,6300:7000,:); % open pit mine
aoi5 = rgb(2800:3500,6200:6800,:); %little harper with water stream
aoi6 = rgb(3800:5300,5400:6350,:); % local airfield

%%
imwrite(rgb,'RGB_PNeo.tiff');
imwrite(cir,'CIR_PNeo.tiff');

imwrite(aoi1,'aoi1_RGB_PNeo.tiff');
imwrite(aoi2,'aoi2_RGB_PNeo.tiff');
imwrite(aoi3,'aoi3_RGB_PNeo.tiff');
imwrite(aoi4,'aoi4_RGB_PNeo.tiff');
imwrite(aoi5,'aoi5_RGB_PNeo.tiff');
imwrite(aoi6,'aoi6_RGB_PNeo.tiff');

%% AOI CIR

aoi1 = cir(1300:1450,3350:3500,:); % MS Pleiades rural
% imshow(aoi1)

aoi2 = cir(2050:2200,4500:4750,:); %  MS Pleiades building
aoi3 = cir(5700:6500,5500:6000,:);
aoi4 = cir(3300:4000,6300:7000,:); % open pit mine
aoi5 = cir(2800:3500,6200:6800,:); %little harper with water stream
aoi6 = cir(3800:5300,5400:6350,:); % local airfield

imwrite(aoi1,'aoi1_CIR_PNeo.tiff');
imwrite(aoi2,'aoi2_CIR_PNeo.tiff');
imwrite(aoi3,'aoi3_CIR_PNeo.tiff');
imwrite(aoi4,'aoi4_CIR_PNeo.tiff');
imwrite(aoi5,'aoi5_CIR_PNeo.tiff');
imwrite(aoi6,'aoi6_CIR_PNeo.tiff');
