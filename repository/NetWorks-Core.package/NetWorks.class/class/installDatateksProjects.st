datateks
installDatateksProjects
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Sydney Financials 2018-19  20190531 v3 Phil.csv'.
  notesFileName := 'projectNotes.csv'.
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import.
  (NWProjectNotesImportTool onFileAtPath: basePath , notesFileName) import