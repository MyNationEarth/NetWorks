5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2RIV03L0109Construction Import.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths