close all;
clear;
clc;
%% read in the file from the directory
path = ('Material_PrePro/');
imagefileNIR = ('NIR8.tiff');
imagefileRed = ('red8.tiff');
imagefileGreen = ('green8.tiff');
imagefileBlue = ('blue8.tiff');

pathimage_NIR = fullfile(path,imagefileNIR);
pathimage_Red = fullfile(path,imagefileRed);
pathimage_Green = fullfile(path,imagefileGreen);
pathimage_Blue = fullfile(path,imagefileBlue);

NIR = imread(pathimage_NIR);
red = imread(pathimage_Red);
green = imread(pathimage_Green);
blue = imread(pathimage_Blue);

CIR = cat(3, NIR,red,green);
RGB = cat(3,red,green,blue);
GBR = cat(3,green,blue,red);
BRG = cat(3, blue, green, red);

%% Image adjustment, if needed

NIR = imadjust(NIR); 
red = imadjust(red); 
green = imadjust(green); 
blue = imadjust(blue); 

CIR = cat(3, NIR,red,green);
RGB = cat(3,red,green,blue);
GBR = cat(3,green,blue,red);
BRG = cat(3, blue, green, red);

%% check for AOI to inspect for interesting locations

%imtool(NIR);

%% extracting submatrices sample

aoi10 = RGB(2200:3200,1900:2600,:); % local airfield
% imshow(aoi10);

imwrite(aoi10,'aoi10_RGB.png');


%% Generating single files for gif
% prepare the single images
% local airfield aoi10

Gif1 = NIR(2200:3200,1900:2600,:);
Gif2 = red(2200:3200,1900:2600,:);
Gif3 = green(2200:3200,1900:2600,:);
Gif4 = blue(2200:3200,1900:2600,:);

Gif5 = CIR(2200:3200,1900:2600,:);
Gif6 = RGB(2200:3200,1900:2600,:);
Gif7 = GBR(2200:3200,1900:2600,:);
Gif8 = BRG(2200:3200,1900:2600,:);


%% Generating 2D based gif
FileName = 'Airbase1.gif';
ImageCell = {Gif1;Gif2;Gif3;Gif4}; %2D

for k = 1:numel(ImageCell)

    if k ==1

%// For 1st image, start the 'LoopCount'.
        imwrite(ImageCell{k},FileName,'gif','LoopCount',Inf,'DelayTime',1);
    else
        imwrite(ImageCell{k},FileName,'gif','WriteMode','append','DelayTime',1);
    end

end

%% Generating 4D based gif

filename = 'Airbase2.gif';
imgs = cat(4, Gif5,Gif6,Gif7,Gif8);

N = size(imgs,4);

for k = 1:N
    frame = imgs(:,:,:,k);          % img frame
    
    [A,map] = rgb2ind(frame,256);   % convert to indexed image
    
    if k == 1
        imwrite(A,map,filename,'gif','LoopCount',Inf,'DelayTime',1);
    else
        imwrite(A,map,filename,'gif','WriteMode','append','DelayTime',1);
    end
end



