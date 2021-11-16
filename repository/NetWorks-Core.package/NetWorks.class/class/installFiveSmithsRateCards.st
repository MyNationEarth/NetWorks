5smiths
installFiveSmithsRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePathFiveSmiths.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'MTA - CRDF Cable Recovery.csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks fiveSmiths rateCards addAll: rateCards copy