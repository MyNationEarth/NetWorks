5smiths
installFiveSmithsJobs
  | importFile |
  importFile := 'L0401 Validations 6.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths