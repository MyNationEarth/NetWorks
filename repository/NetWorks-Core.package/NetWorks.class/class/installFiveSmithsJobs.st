5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2KEL-01 Import.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths