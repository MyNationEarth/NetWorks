5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2CAS-20-Construction Import 1.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths