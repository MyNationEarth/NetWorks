export spreadsheet
respondWithStockOnHandSpreadsheet
  | file |
  file := WAFile new
    fileName:
        'StockOnHandSpreadsheet-' , DateAndTime now asRFC1123String , '.csv';
    contentType: (WAMimeType fromString: 'application/vnd.ms-excel');
    contents:
        (NWMaterialStoreExportTool new
            materialStore: self model;
            exportFile;
            contents);
    yourself.
  self requestContext
    respond: [ :response | 
      response
        contentType: file contentType;
        document: file rawContents asString;
        attachmentWithFileName: file fileName ]