Importing
import
  | importTool |
  importTool := NWRateCardImportTool onFileAtPath: filePath.
  rateCategories := importTool
    import;
    rateCategories