magritte-hooks
backReferenceAfterCommit: aProjectOrOrgnisationModel
  super backReferenceAfterCommit: aProjectOrOrgnisationModel.
  (aProjectOrOrgnisationModel isKindOf: NWProject)
    ifTrue: [ 
      (self organisationModel defects includes: self)
        ifFalse: [ self organisationModel defects add: self ] ].
  (aProjectOrOrgnisationModel isKindOf: NWOrganisationModel)
    ifTrue: [ 
      (self project defects includes: self)
        ifFalse: [ self project defects add: self ] ]