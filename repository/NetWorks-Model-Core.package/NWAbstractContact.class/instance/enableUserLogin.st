user access
enableUserLogin
  | role |
  "Add the login role"
  self bpmUser
    ifNotNil: [ :user | self bpmRole grantUser: user ifPresent: [  ] ]