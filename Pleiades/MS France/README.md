
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
1 %% read in the file from the directory
2 %% extraction of the single bands
3 %% from 16 to 8 bits (image depth)
4 %% Check the band order
5 %% writing single bands to file

RGB (red/green/blue) and CIR (NIR/red/green)





