as yet unclassified
validateUserName: aWAEmailAddress password: password
  ^ (NWCurrentOrganisationModel value userContacts
    detect: [ :user | user emailAddress = aWAEmailAddress ]
    ifNone: [ nil ])
    ifNil: [ false ]
    ifNotNil: [ :user | user cryptPassword asString startsWith: password ]