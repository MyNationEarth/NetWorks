user validation
validateUserName: aWAEmailAddress password: password
  | userName logedUser loginMode |
  userName := (aWAEmailAddress isKindOf: WAEmailAddress)
    ifTrue: [ aWAEmailAddress address ]
    ifFalse: [ aWAEmailAddress ].
  loginMode := self getGemStoneServerConfiguration
    loginModeFor: 'orbeon-processes-web'.
  (loginMode validateUser: userName password: password)
    ifFalse: [ ^ Error signal: 'No user found with name "' , userName , '".' ].
  logedUser := BpmUser getExistingOrNewUserNamed: userName.
  self session user: logedUser