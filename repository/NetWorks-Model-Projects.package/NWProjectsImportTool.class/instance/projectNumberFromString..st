Importing
projectNumberFromString: aString
  | projectNumber |
  projectNumber := self stringFrom: aString regex: '(MW[0-9]+)' subexpression: 2