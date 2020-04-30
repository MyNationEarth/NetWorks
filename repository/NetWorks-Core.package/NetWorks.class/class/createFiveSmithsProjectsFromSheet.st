5smiths
createFiveSmithsProjectsFromSheet
  "NetWorks createFiveSmithsProjectsFromSheet"

  | basePath fileName notesFileName |
  basePath := self projectBaseDirectory pathName , '/documents/5Smiths/'.
  fileName := 'Datateks FTTC Validation L0401 LOC List - 5Smiths.csv'.
  (NWProjectsCreateTool onFileAtPath: basePath , fileName) import