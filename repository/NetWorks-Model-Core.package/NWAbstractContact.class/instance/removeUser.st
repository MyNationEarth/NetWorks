user access
removeUser
  self bpmUser ifNotNil: [ :user | user removeFromCache ]