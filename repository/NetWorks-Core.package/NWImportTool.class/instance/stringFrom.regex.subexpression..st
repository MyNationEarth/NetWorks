conversion
stringFrom: aString regex: regexString subexpression: subIndex
  | rxMatcher |
  rxMatcher := regexString asRegex.
  rxMatcher search: aString.
  ^ rxMatcher subexpression: subIndex