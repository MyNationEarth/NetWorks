datateks
installDatateksProjects
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Sydney Financials 2018-19  20190330 Phil.csv'.
  fileName := 'Datateks Sydney Financials 2018-19  20190515 Phil.csv'.
  notesFileName := 'ProjectNotes.csv'.
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import.
  (NWProjectNotesImportTool onFileAtPath: basePath , notesFileName) import