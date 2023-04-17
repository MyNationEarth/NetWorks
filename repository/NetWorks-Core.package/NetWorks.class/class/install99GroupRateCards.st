99group
install99GroupRateCards
  | basePath rateCards importTool |
  basePath := self rateCardImportBasePath99Group.
  importTool := NW99GroupRateCardImportTool
    onFileAtPath: basePath , 'MTA - Optus.csv'.
  importTool setDebug.
  rateCards := importTool import values.
  NetWorks ninetyNineGroup rateCards addAll: rateCards copy