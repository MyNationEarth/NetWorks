as yet unclassified
verifyRequest: aRequestContext
  | userName password |
  userName := aRequestContext request headers at: 'user'.
  password := aRequestContext request headers at: 'authorization'.
  password := password copyFrom: 7 to: password size.	" (ObjectLogEntry
    info: 'Auth Request: ' , (aRequestContext request at: 'x-original-url')
    object:
      {userName.
      password.
      (aRequestContext request headers)})
    addToLog."
  ^ userName = 'apiKey'
    ifTrue: [ self verifyApiKey: password requestContext: aRequestContext ]
    ifFalse: [ self validateUserName: userName password: password ]