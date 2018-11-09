accessing
userName
  self ifLoggedIn: [ ^ self user userName ].
  ^ nil