
Pléiades 1B is belonging to the European Space Agency (ESA). The Panchromatic band reaches a resolution of 0.5m while the Multispectral bands reaches 2m resolution. 
As a result, Pléiades is a satellite with very-high resolution (VHR) imagery. 

The city of La Crau in France is covered, the nadir view of the multispectral is available as download.
The dataset can be officially download here:
https://earth.esa.int/eogateway/missions/pleiades/sample-data
Last checked: 01. March 2026

Table: 
Multispectral Metadata Summary. The Production Date is important if you want to take seasonal changes into consideration. 
The incidence angel matters if you are working on geometric operations. Finally, the band order knowledge to compose images like true colour (RGB). 

| Metadata                      |                                    |
| ----------------------------- | ---------------------------------- |
| Production Date               |  2024-04-29  17: 58: 02. 686       |
| Incidence Angle Alonge Track  |  -10.64663824814489                |
| Incidence Angle Across Track  |  16.68971922285316                 |
| Chanel order                  | Red, Green, Blue, Alpha (NIR)      |
Source: DIM_PHR1B_MS_202404231033373_SEN_6979456101-2.XML            


Short Explanation FranceMS_PrePro.m
Mac OS: Tahoe 26.3; Matlab R2018b Update 8
1 read in the file from the directory
2 extraction of the single bands
3 from 16 to 8 bits (image depth)
4 check the band order
5 writing single bands to file

RGB = (red/green/blue) and CIR  = (NIR/red/green)


| RGB      | CIR      |
|------------|-------------|
| <img width="300" height="400" alt="Image" src="https://github.com/user-attachments/assets/b2290b1f-0a98-405e-88a2-4a67ff8351e1" />| <img width="300" height="400" alt="Image" src="https://github.com/user-attachments/assets/1702c409-8246-4638-b22b-a9738d10ea2f" /> |

| NIR      | Red      | Green      | Blue      |
|------------|-------------|------------|-------------|
|<img width="600" height="600" alt="Image" src="https://github.com/user-attachments/assets/2fc0cf90-1eeb-4543-a57b-6ed2c38ca2bb" />|<img width="600" height="600" alt="Image" src="https://github.com/user-attachments/assets/c79d80c0-c52b-4435-a5ae-d54da5a05f10" />|<img width="600" height="600" alt="Image" src="https://github.com/user-attachments/assets/3c2bc070-d8de-4dbf-a724-66b5780e4629" />|<img width="600" height="600" alt="Image" src="https://github.com/user-attachments/assets/8596924d-53de-47cc-b4b5-d44a22ec0e15" />|


