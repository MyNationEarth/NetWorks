datateks
installDatateksProjects
  | basePath fileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Sydney Financials 2018-19  20190320 Phil.csv'.	"fileName := 'Datateks Sydney Financials 2018-19  20181128 Phil 2/NBN_MWI & Pipe Data-Table 1.csv'."
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import