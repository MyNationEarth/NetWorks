responders
respondWithDesignSpreadsheet
  | file |
  file := WAFile new
    fileName: 'DesignSpreadsheet-' , DateAndTime now asRFC1123String , '.csv';
    contentType: (WAMimeType fromString: 'application/vnd.ms-excel');
    contents:
        (NWProjectDesignExportTool new
            exportFile;
            contents);
    yourself.
  self requestContext
    respond: [ :response | 
      response
        contentType: file contentType;
        document: file rawContents encodeAsUTF8IntoString;
        attachmentWithFileName: file fileName ]