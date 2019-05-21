initialization
pullIdentifiersFromTitle: aTitleString
  | temp identifiers mw ayca fsam |
  identifiers := aTitleString copy.
  mw := self stringFrom: identifiers regex: '(MW[0-9A-Z]+)' subexpression: 2.
  temp := identifiers copyReplaceAll: '' , (mw ifNotNil: [ mw ]) with: ''.
  ayca := self stringFrom: temp regex: 'AYCA-([0-9A-Z]+)' subexpression: 2.
  temp := temp copyReplaceAll: 'AYCA-' , (ayca ifNotNil: [ ayca ]) with: ''.
  fsam := self
    stringFrom: temp
    regex: '([0-9][A-Z]+-[0-9][0-9])'
    subexpression: 2.
  temp := temp copyReplaceAll: fsam with: ''.
  address := self cleanString: temp.
  self
    minorWorksNumber: mw;
    aycaNumber: ayca;
    sam: fsam