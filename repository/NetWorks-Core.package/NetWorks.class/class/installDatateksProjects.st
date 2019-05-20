datateks
installDatateksProjects
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'Datateks Sydney Financials 2018-19  20190520 Phil.csv'.
  notesFileName := 'ProjectNotes.csv'.
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import.
  (NWProjectNotesImportTool onFileAtPath: basePath , notesFileName) import