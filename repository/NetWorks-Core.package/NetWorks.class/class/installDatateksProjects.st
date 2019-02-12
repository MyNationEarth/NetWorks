datateks
installDatateksProjects
  | basePath |
  basePath := self historicalDataImportBasePath.
  (NWProjectsImportTool
    onFileAtPath:
      basePath
        ,
          'Datateks Sydney Financials 2018-19  20181128 Phil 2/NBN_MWI & Pipe Data-Table 1.csv')
    import