Importing
import
  | importTool |
  importTool := NWRateCardImportTool onFileAtPath: filePath.
  self
    attributeAt: #'debug'
    ifPresent: [ :isDebug | 
      isDebug
        ifTrue: [ importTool setDebug ] ].
  rateCategories := importTool
    import;
    rateCategories