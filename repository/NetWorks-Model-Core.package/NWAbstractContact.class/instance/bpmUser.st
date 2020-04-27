user access
bpmUser
  "Answer the BpmUser with userName"

  self userName ifNil: [ ^ nil ].
  ^ BpmUser getUserNamed: self userName asLowercase ifAbsent: [ nil ]