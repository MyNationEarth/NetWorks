accessing
defectCounter
  ^ defectCounter ifNil: [ self initializeDefectCounter ]