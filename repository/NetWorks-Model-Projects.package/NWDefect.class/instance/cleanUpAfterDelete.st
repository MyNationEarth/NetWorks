magritte-hooks
cleanUpAfterDelete
  super cleanUpAfterDelete.
  (self project defects includes: self)
    ifTrue: [ self project defects remove: self ].
  (self organisationModel defects includes: self)
    ifTrue: [ self organisationModel defects remove: self ]