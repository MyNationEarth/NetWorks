5smiths
installFiveSmithsRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePathFiveSmiths.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'Swish - Downer TFO - Rate Card.csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks fiveSmiths rateCards addAll: rateCards copy