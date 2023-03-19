importing
importJobsFromFile: file
  | csvString |
  csvString := file rawContents.
  NWJobImportTool
    importCSVString: csvString
    organisationModel: NWCurrentOrganisationModel value