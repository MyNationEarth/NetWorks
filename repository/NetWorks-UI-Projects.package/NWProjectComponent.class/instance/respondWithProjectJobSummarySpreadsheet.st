exports
respondWithProjectJobSummarySpreadsheet
  | file |
  file := WAFile new
    fileName:
        self model uri , '-JobSummarySpreadsheet-' , DateAndTime now asRFC1123String
            , '.csv';
    contentType: (WAMimeType fromString: 'application/vnd.ms-excel');
    contents:
        (NWProjectJobsSummaryExportTool new
            jobs: self model jobs;
            exportFile;
            contents);
    yourself.
  self requestContext
    respond: [ :response | 
      response
        contentType: file contentType;
        document: file rawContents encodeAsUTF8IntoString;
        attachmentWithFileName: file fileName ]