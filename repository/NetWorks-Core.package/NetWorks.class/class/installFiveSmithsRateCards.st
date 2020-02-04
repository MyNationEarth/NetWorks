5smiths
installFiveSmithsRateCards
  | basePath rateCategories rateCards importTool |
  basePath := self rateCardImportBasePathFiveSmiths.
  (NetWorks instance organisationModels at: #'5smiths.com.au') rateCards.
  importTool := NWFiveSmithsRateCardImportTool
    onFileAtPath: basePath , 'rateCard04022020.csv'.
  self
    attributeAt: #'debug'
    ifPresent: [ :isDebug | 
      isDebug
        ifTrue: [ importTool setDebug ] ].
  rateCategories := importTool
    import;
    rateCategories