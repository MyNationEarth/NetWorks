Accessing
materialTitleAndComment
  ^ material ifNil: [ '' ] ifNotNil: [ material titleAndComment ]