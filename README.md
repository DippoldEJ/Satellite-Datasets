Satellite-Datasets Overview
-------------------------
-------------------------
DippoldEJ Satellite Datasets Pleiades Multispectral Panchromatic France Melbourne


Structure: <br />

```mermaid
graph TD;

    Pleiades-->MS-->France;
    Pleiades-->PAN-->France;
    PAN-->Melbourne;

```

```mermaid
flowchart LR;
A(["Start"]);
A-->B{Decision};
B-->C["Option A"];
B-->D["OptionB"];
```

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
flowchart LR;
    subgraph Azure
        s[fa:fa-code Server]
        db[(fa:fa-table Database)]
    end
    subgraph Netlify
        c[fa:fa-user Client]
    end

    subgraph Netlify
    end
    subgraph Azure
        direction LR
    end

   c -- HTTP GET --> s
    s -- SQL Query --> db
    db -. Result Set .-> s
    s -. JSON .-> c
```

```mermaid
flowchart LR;

subgraph Satellite
    s[fa:fa-code Pleiades]
    end

 subgraph Data
        db[(fa:fa-table MS + PAN)]
    end

    s-->db

```

Pleiades
------------

