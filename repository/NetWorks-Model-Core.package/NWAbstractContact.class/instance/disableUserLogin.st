user access
disableUserLogin
  "Remove the login role"

  self bpmUser
    ifNotNil: [ :user | self bpmRole ungrantUser: user ifAbsent: [  ] ]