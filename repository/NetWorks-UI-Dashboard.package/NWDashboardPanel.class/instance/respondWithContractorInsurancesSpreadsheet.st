responders
respondWithContractorInsurancesSpreadsheet
  | file |
  file := WAFile new
    fileName:
        'ContractorInsurancesSpreadsheet-' , DateAndTime now asRFC1123String , '.csv';
    contentType: (WAMimeType fromString: 'application/vnd.ms-excel');
    contents:
        (NWContractorInsurancesExportTool new
            exportFile;
            contents);
    yourself.
  self requestContext
    respond: [ :response | 
      response
        contentType: file contentType;
        document: file rawContents encodeAsUTF8IntoString;
        attachmentWithFileName: file fileName ]