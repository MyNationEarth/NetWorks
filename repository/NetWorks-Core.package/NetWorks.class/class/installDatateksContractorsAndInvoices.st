datateks
installDatateksContractorsAndInvoices
  | basePath |
  basePath := self historicalDataImportBasePath.
  (NWContractorsImportTool
    onFileAtPath:
      basePath
        ,
          'Datateks Sydney Financials 2018-19 20181128 Phil/Invoices-Table 1.csv')
    import