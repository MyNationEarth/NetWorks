datateks
installDatateksProjects
  | basePath fileName notesFileName |
  basePath := self historicalDataImportBasePath.
  fileName := 'NBN-MWI-Pipe-Data-Table-2017-2018.csv'.	"notesFileName := 'projectNotes.csv'."
  (NWProjectsImportTool onFileAtPath: basePath , fileName) import	"(NWProjectNotesImportTool onFileAtPath: basePath , notesFileName) import"