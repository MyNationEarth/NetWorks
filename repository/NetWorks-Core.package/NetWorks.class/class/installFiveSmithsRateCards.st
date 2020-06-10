5smiths
installFiveSmithsRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePathFiveSmiths.
  (NetWorks instance organisationModels at: #'5smiths.com.au') rateCards.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'Rate Card - Lend Lease - MWA.csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks fiveSmiths rateCards addAll: rateCards copy