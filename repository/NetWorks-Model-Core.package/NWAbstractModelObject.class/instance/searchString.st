searching
searchString
  "Answer a string used for matching text against this object"

  ^ self attributeAt: #'searchString' ifAbsentPut: [ self generateSearchString ]