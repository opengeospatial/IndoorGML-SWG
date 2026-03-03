The JSON schema for IndoorGML 2.0 (named *IndoorJSON*) is designed to convert the IndoorGML 2.0 conceptual model into a JSON schema with a 1 on 1 correspondence.

The core schema is consist of 9 feature classes and a datatype class:
![FIG16.png](../../Part%20I/figures/FIG16.png)
Feature Classes:
- IndoorFeatures
  - ThematicLayer
    - PrimalSpaceLayer
      - CellSpace
      - CellBoundary
    - DualSpaceLayer
      - Node
      - Edge
  - InterLayerConnection

DataType class:
- ExternalReference

The navigation schema is consist of 8 feature classes:
![FIG25_rotate.png](../../Part%20I/figures/FIG25_rotate.png)
- NavigableSpace
  - GeneralSpace
  - TransferSpace
- NonNavigableSpace
  - ObjectSpace
- NavigableBoundary
- NonNavigableBoundary
- Route
