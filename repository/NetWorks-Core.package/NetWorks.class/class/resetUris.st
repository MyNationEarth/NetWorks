utilities
resetUris
  NetWorks instance organisationModels
    do: [ :organisation | 
      organisation clients do: [ :c | c uri: c generateUri ].
      organisation projects do: [ :p | p uri: p generateUri ].
      organisation defects do: [ :d | d uri: d generateUri ] ]