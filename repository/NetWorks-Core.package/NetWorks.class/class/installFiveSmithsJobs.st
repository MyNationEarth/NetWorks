5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2MIL-01 ADA-18 Construction - import devices.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths