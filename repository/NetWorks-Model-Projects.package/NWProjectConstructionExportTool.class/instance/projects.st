export file
projects
  ^ self organisationModel projects
    select: [ :p | p aycaNumber notNil and: [ p aycaNumber notEmpty ] ]