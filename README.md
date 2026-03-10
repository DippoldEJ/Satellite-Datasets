Satellite-Datasets Overview
-------------------------
-------------------------
DippoldEJ Satellite Datasets Pleiades Multispectral France Panchromatic <br />
Methodology: Preprocesing, Bands, Band Combinations and Area of Interest (AOI) gif, 


Structure: <br />

```mermaid
flowchart LR;

subgraph Satellite
    s[fa:fa-code Pleiades]
    a[fa:fa-code Landsat]
    end

 subgraph Imagery
        db[(fa:fa-table MS + PAN)]
        m[MS = Multispectral]
        p[PAN = Panchromatic]
        b([Red,Green,Blue,NIR])
        c([PAN])
    end

    s==>db
    db-->m
    db-->p
    m-->b
    p-->c
```

Pleiades 1B
------------

