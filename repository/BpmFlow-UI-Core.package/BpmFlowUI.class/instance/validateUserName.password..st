user validation
validateUserName: aWAEmailAddress password: password
  | userName logedUser loginMode |
  userName := (aWAEmailAddress isKindOf: WAEmailAddress)
    ifTrue: [ aWAEmailAddress address ]
    ifFalse: [ aWAEmailAddress ].
  loginMode := self getGemStoneServerConfiguration
    loginModeFor: 'orbeon-processes-web'.
  (loginMode validateUser: userName asLowercase password: password)
    ifFalse: [ 
      ^ Error
        signal:
          'The user name and password combination you entered was not found.' ].
  logedUser := BpmUser getUserNamed: userName asLowercase ifAbsent: [ nil ].
  self session user: logedUser