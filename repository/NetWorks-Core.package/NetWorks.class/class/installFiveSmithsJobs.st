5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2DUR-24 Project Import 5.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths