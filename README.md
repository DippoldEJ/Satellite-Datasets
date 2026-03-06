Satellite-Datasets Overview
-------------------------
-------------------------
DippoldEJ Satellite Datasets Pleiades Multispectral Panchromatic France Melbourne


Structure: <br />

```mermaid
graph TD;
a[Default]
    b([Rounded])
    c[(Database)]
    d[[Subroutine]]
    e((Circle))
    f>Note]
    g{Decision}
    h{{Hexagon}}
    i[/Parallelogram/]
    j(((Double Circle)))
```

```mermaid
flowchart LR
    Base --> Arrow
    Base ==> Heavy
    Base -.-> Dotted
    Base --- Line
    Base --> You --> Can --> Chain --> Relations --> On --> One --- Line
```

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
        b([Red,Green,Blue,Nir])
    end

    s==>db
    db-->m
    db-->p
    m-->b

```

Pleiades
------------

