The SQL encoding of IndoorGML 2.0 maps the Part 1 conceptual model to a PostgreSQL/PostGIS relational schema with one table per feature class.

**Core module** — `Indoorfeatures`, `Thematiclayer`, `Primalspacelayer`, `Dualspacelayer`, `Cellspace`, `Cellboundary`, `Node`, `Edge`, `Interlayerconnection` (+ junction tables for M:N links to `Thematiclayer`, `Node`, `Cellspace`).

**Navigation module** — `Navigablespace`, `Generalspace`, `Transferspace`, `Nonnavigablespace`, `Objectspace`, `Navigableboundary`, `Nonnavigableboundary`, `Route`.

## Directory structure

```
SQL/
├── readme.md
├── examples/
│   └── indoorjson2_dummy.sql          # Sample INSERT statements
└── standard_implementation/
    ├── document.adoc                  # OGC Part 2c standard draft (Metanorma)
    ├── document.pdf
    ├── sections/                      # Document clauses
    ├── schema/
    │   ├── IndoorGML_core.sql         # Canonical core DDL (apply first)
    │   ├── IndoorGML_navi.sql         # Canonical navigation DDL
    │   ├── core/                      # Per-feature DDL fragments
    │   └── navi/
    ├── examples/                      # Query and INSERT examples
    ├── figures/                       # UML diagrams
    └── scripts/
        └── build-document.sh          # Rebuild PDF/HTML
```

## Key encoding choices

- **PostgreSQL 14+ with PostGIS** — geometry columns use the `geometry` type.
- **ENUM types** — UML code lists are mapped to PostgreSQL `ENUM` types (not lookup tables).
- **`jsonb` arrays** — `Node.connects` / `Edge.connects` for graph adjacency; `Route.routeNode` / `Route.routeEdge` for ordered traversal sequences.
- **Junction tables** — `InterLayerConnection_*` for many-to-many associations.

## Reference implementation

Canonical schema: `standard_implementation/schema/IndoorGML_*.sql`

Rebuild the standard document:

```bash
cd standard_implementation
bash scripts/build-document.sh
```
