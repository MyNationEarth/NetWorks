searching
clearSearchString
  ^ self attributes values removeKey: #'searchString' ifAbsent: [  ]