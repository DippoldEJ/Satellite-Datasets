Satellite-Datasets Overview
-------------------------
-------------------------
DippoldEJ Satellite Datasets Pleiades Multispectral France Panchromatic Melbourne <br />
Methodology: Area of Interest (AOI), Features (Points, Edges, Corners)


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
    end

    s==>db
    db-->m
    db-->p
    m-->b
```

Pleiades 1B
------------

