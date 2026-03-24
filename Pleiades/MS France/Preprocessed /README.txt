Introduction and Preprocessing
-----------------------------------------
-----------------------------------------


Pléiades 1B is belonging to the European Space Agency (ESA). The Panchromatic band reaches a resolution of 0.5m while the Multispectral bands reaches 2m resolution. 
As a result, Pléiades is a satellite with very-high resolution (VHR) imagery. 

Location
-------------------------------------------

The city of La Crau in France is covered, the nadir view of the multispectral is available as download.
The dataset can be officially download here:
https://earth.esa.int/eogateway/missions/pleiades/sample-data
Last checked: 01. March 2026

<img width="1419" height="401" alt="Image" src="https://github.com/user-attachments/assets/bd7c92fa-102c-48a1-b720-12f964bb4083" />

Metadata
-------------------------------------------

Multispectral Metadata Summary. The Production Date is important if you want to take seasonal changes into consideration. 
The incidence angel matters if you are working on geometric operations. Finally, the band order knowledge to compose images like true colour (RGB). 

| Metadata                      |                                    |
| ----------------------------- | ---------------------------------- |
| Production Date               |  2024-04-29  17: 58: 02. 686       |
| Incidence Angle Alonge Track  |  -10.64663824814489                |
| Incidence Angle Across Track  |  16.68971922285316                 |
| Chanel order                  | Red, Green, Blue, Alpha (NIR)      |
Source: DIM_PHR1B_MS_202404231033373_SEN_6979456101-2.XML            


Short Explanation FranceMS_PrePro.m <br />
-------------------------------------------
Mac OS: Tahoe 26.3; Matlab R2018b Update 8 <br />
1 read in the file from the directory <br />
2 extraction of the single bands <br />
3 from 16 to 8 bits (image depth) <br />
4 check the band order <br />
5 writing single bands to file <br />

Examples
----------------------------------------------

RGB = (red/green/blue) and CIR  = (NIR/red/green) 

| RGB      | CIR      |
|------------|-------------|
| <img width="460" height="400" alt="Image" src="https://github.com/user-attachments/assets/36bdf1b6-42b9-4a5a-9feb-f62965e03d2e" />| <img width="460" height="400" alt="Image" src="https://github.com/user-attachments/assets/359007fd-bb31-4c16-b180-040ca5eb21d6" /> |

| NIR      | Red      | Green      | Blue      |
|------------|-------------|------------|-------------|
|<img width="448" height="499" alt="Image" src="https://github.com/user-attachments/assets/2c7196bd-54e3-492e-9cd4-68fc2143047a" />| <img width="448" height="499" alt="Image" src="https://github.com/user-attachments/assets/867dfce6-90ff-4e3c-a7e0-65402db9fe1f" /> |<img width="433" height="482" alt="Image" src="https://github.com/user-attachments/assets/8622da2e-588c-4758-820a-4d245e5b8631" /> |<img width="448" height="499" alt="image" src="https://github.com/user-attachments/assets/158e511c-8354-49c6-b279-1dbe208696b6" />|
