datateks
rateCardImportBasePath
  | basePathName |
  basePathName := BaselineOfNetWorks project currentVersion packages first
    workingCopy repositoryGroup repositories last directory containingDirectory
    pathName.
  ^ basePathName , '/documents/Datateks/rateCards/'