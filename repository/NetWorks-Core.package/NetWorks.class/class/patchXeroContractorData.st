5smiths
patchXeroContractorData
  | xeroData |
  (xeroData := self xeroContractorData)
    do: [ :contractorData | 
      | xeroAccount contractor nextInvoiceNumber percentage |
      xeroAccount := contractorData first.
      contractor := (contractorData second findTokens: '-') last allButFirst.
      contractorData third
        ifNotEmpty: [ nextInvoiceNumber := (contractorData third findTokens: '-') last asNumber ].
      percentage := contractorData last allButLast asNumber / 100.
      self halt ]