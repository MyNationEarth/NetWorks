utilities
fixDefectNames
  NetWorks instance organisationModels
    do: [ :om | om defects do: [ :defect | defect title: defect title asString ] ]