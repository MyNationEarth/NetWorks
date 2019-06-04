magritte hooks
backReference: aProjectOrContractor
  (aProjectOrContractor isKindOf: NWProject)
    ifTrue: [ self project: aProjectOrContractor ].
  (aProjectOrContractor isKindOf: NWContractor)
    ifTrue: [ self contractor: aProjectOrContractor ]