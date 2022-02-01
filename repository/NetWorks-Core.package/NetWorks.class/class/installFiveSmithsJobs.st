5smiths
installFiveSmithsJobs
  | importFile |
  importFile := 'T2Q2 - ACT1 - Civic CID Import.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths