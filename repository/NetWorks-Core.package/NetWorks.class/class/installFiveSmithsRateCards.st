5smiths
installFiveSmithsRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePathFiveSmiths.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'Visionstream - N2P (NSW).csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks fiveSmiths rateCards addAll: rateCards copy