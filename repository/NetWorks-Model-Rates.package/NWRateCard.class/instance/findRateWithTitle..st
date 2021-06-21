utilities
findRateWithTitle: rateTitle
  self rateCategories
    do: [ :rateCategory | 
      (rateCategory rates detect: [ :rate | rate title = rateTitle ] ifNone: [ nil ])
        ifNotNil: [ :rate | ^ rate ] ].
  ^ nil