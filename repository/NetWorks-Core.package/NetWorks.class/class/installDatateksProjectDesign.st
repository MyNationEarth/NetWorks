datateks
installDatateksProjectDesign
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Design Master Tracker  for loading into database.csv'.
  (NWProjectDesignImportTool onFileAtPath: basePath , fileName) import