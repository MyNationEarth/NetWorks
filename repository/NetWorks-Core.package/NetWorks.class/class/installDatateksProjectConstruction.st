datateks
installDatateksProjectConstruction
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Fortnightly Forecast MDU  SDU - WS 29.07.2019/Datateks-Table 1.csv'.
  (NWProjectConstructionImportTool onFileAtPath: basePath , fileName) import