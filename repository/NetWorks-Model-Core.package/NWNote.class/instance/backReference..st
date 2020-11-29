magritte hooks
backReference: anObject
  "If there is a current user, save the details"

  self referencedObject: anObject.
  self session user ifNotNil: [ :user | self user: user ]