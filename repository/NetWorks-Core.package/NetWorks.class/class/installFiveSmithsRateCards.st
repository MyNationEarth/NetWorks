5smiths
installFiveSmithsRateCards
  | org orgModel basePath rateCards importTool |
  " '5smiths.com.au' "
  org := 'swish.fios.com.au'.
  orgModel := NetWorks instance organisationWithDnsName: org.
  basePath := self rateCardImportBasePathFiveSmiths.
  importTool := NWMultiTennantRateCardImportTool
    onFileAtPath: basePath , 'Swish - Downer TFO - Rate Card.csv'.
  importTool organisationModel: orgModel.
  importTool setDebug.
  rateCards := importTool import values.
  orgModel rateCards addAll: rateCards copy