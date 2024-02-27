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
      false
        ifTrue: [ 
          (ObjectLogEntry
            info:
              'Login from "' , userName , '" with password: "' , password , '" failed'
            object: loginMode) addToLog ].
      ^ Error
        signal:
          'The user name and password combination you entered was not found. Please try again.' ].
  logedUser := BpmUser getUserNamed: userName ifAbsent: [ nil ].
  self session user: logedUser