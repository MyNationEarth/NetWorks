conversion
stringFrom: aString regex: regexString subexpression: subIndex
  | rxMatcher |
  rxMatcher := regexString asRegex.
  (rxMatcher search: aString)
    ifFalse: [ ^ '' ].
  ^ rxMatcher subexpression: subIndex