5smiths
installFiveSmithsJobs
  | importFile |
  importFile := '2KTB-02 FTTC import.csv'.
  NWJobImportTool
    importFile:
      '/opt/git/MyNationEarth/NetWorks/documents/FiveSmiths/jobImport/' , importFile
    organisationModel: NetWorks fiveSmiths