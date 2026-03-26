close all;
clear;
clc;
%%

path = ('WO_000194893_1_1_SAL24178558-1_ACQ_PNEO4_03900110291627/000194893_1_1_STD_A/IMG_01_PNEO4_PAN');
imagefile = ('IMG_PNEO4_202401241018189_PAN_SEN_PWOI_000194893_1_1_F_1_P_R1C1.JP2');

pathimage = fullfile(path,imagefile);

Pan16 = imread(pathimage);

%% pan and the adjusted pan 

pan8 = uint8(255*mat2gray(Pan16));
AJpan8 = imadjust(pan8); 

%% Area of Interest 

aoi1 = AJpan8(5200:5800,13400:14000);% Pleiades rural
aoi2 = AJpan8(8200:8800,18000:19000); %  Pleiades building
aoi3 = AJpan8(22800:26000,22000:24000);
aoi4 = AJpan8(13200:16000,25200:28000); % open pit mine
aoi5 = AJpan8(11200:14000,24800:27200); %little harper with water stream

aoi6 = AJpan8(15200:21200,21600:25400); % local airfield Pan P NEO
% imshow(aoi6)
% aoi6 = rgb(3800:5300,5400:6350,:); % local airfield MS P Neo

%%

imwrite(aoi1,'aoi1_AJpan_PNeo.tiff');
imwrite(aoi2,'aoi2_AJpan_PNeo.tiff');
imwrite(aoi3,'aoi3_AJpan_PNeo.tiff');
imwrite(aoi4,'aoi4_AJpan_PNeo.tiff');
imwrite(aoi5,'aoi5_AJpan_PNeo.tiff');
imwrite(aoi6,'aoi6_AJpan_PNeo.tiff');

