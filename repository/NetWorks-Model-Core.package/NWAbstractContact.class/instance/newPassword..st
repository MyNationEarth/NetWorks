user access
newPassword: newPassword
  "Update the BpmUser password"

  (newPassword isNil or: [ newPassword isEmpty ])
    ifTrue: [ ^ self ].
  self bpmUser ifNotNil: [ :user | user password: newPassword ]