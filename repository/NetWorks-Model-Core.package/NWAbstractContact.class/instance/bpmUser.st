user access
bpmUser
  "Answer the BpmUser with userName"

  ^ BpmUser getUserNamed: self userName asLowercase ifAbsent: [ nil ]