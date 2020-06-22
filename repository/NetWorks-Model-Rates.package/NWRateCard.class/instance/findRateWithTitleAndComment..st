utilities
findRateWithTitleAndComment: titleAndCommentString
  | rateTitle |
  rateTitle := (titleAndCommentString substrings: ' ') first.
  self rateCategories
    do: [ :rateCategory | 
      (rateCategory rates detect: [ :rate | rate title = rateTitle ] ifNone: [ nil ])
        ifNotNil: [ :rate | ^ rate ] ].
  ^ nil