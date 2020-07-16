export file
rows
  ^ self organisationModel projects
    select: [ :p | p aycaNumber notNil and: [ p aycaNumber notEmpty ] ]