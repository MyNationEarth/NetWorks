importing
importStockOnHandFromFile: file
  | importer |
  importer := NWMaterialStoreImportTool new
    materialStore: importMaterialStore;
    rawData: file rawContents;
    yourself.
  importer import