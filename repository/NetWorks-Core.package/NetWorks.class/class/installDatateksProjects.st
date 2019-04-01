datateks
installDatateksProjects
  | basePath fileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Sydney Financials 2018-19  20190320 Phil.csv'.
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import