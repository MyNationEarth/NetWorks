99group
install99GroupRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePath99Group.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'MTA - Optus.csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks ninetyNineGroup rateCards addAll: rateCards copy