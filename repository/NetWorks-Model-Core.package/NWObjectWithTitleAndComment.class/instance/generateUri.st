private
generateUri
  ^ WAUrl absolute: (self validUriFrom: (title ifNil: [ self idString36 ]))