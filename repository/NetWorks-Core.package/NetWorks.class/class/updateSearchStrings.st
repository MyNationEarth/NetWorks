utilities
updateSearchStrings
  NetWorks instance organisationModels
    do: [ :om | om useDuring: [ om projects do: [ :p | p updateSearchString ] ] ]