rendering
importStockOnHandFromFile: file
  | importer |
  importer := NWMaterialStoreImportTool new
    materialStore: self model;
    rawData: file rawContents;
    yourself.
  importer import.
  self commit