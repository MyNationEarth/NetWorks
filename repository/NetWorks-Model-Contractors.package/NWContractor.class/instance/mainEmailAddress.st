Accessing
mainEmailAddress
  "Answer the email address of the first contact"

  ^ self contacts
    ifEmpty: [ '' ]
    ifNotEmpty: [ :contacts | contacts first emailAddress ]