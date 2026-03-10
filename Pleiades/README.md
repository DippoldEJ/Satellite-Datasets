
Single View very-high Resolution Satellite Imagery Overview
------------------------------------------------------------
------------------------------------------------------------
DippoldEJ Satellite Datasets Pleiades Multispectral France Panchromatic  very-high Resolution (VHR)  <br />

```mermaid
flowchart TD;

subgraph VHR Satellite Imagery
    a[fa:fa-code MS Multispectral]
    b[fa:fa-code PAN Panchromatic]
    end

subgraph  
    c[fa:fa-code MS France]
    d[fa:fa-code PAN France]

    end

subgraph  
    f["`Dimension: 5555 x 5039 x 4
    View: Backward 
    Depth: 16 bit
    Type: u-int
    File: JP2`"]
end

subgraph  
    g["`Dimension: 22'200 x 20'152 x 4
    View: Backward
    Depth: 16 bit
    Type: u-int
    File: JP2`"]
end

c --> f
a --> c
b --> d

d --> g

```
