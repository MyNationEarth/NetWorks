private
generateUri
  ^ self
    validUriFrom:
      (title ifNil: [ self idString36 ]) , '-' , self agreementDate yyyymmdd