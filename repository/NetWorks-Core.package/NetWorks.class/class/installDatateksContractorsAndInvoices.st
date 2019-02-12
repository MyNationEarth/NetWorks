datateks
installDatateksContractorsAndInvoices
  | basePath |
  basePath := self historicalDataImportBasePath.
  (NWContractorsImportTool
    onFileAtPath:
      basePath
        ,
          'Datateks Sydney Financials 2018-19  20181128 Phil 2/Invoices-Table 1.csv')
    import