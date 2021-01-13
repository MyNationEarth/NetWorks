user access
newPassword: newPassword
  "Update the BpmUser password"

  (newPassword isNil or: [ newPassword isEmpty ])
    ifTrue: [ ^ self ].
  self bpmUser ifNotNil: [ :user | user password: newPassword ].	"Store a crypt password version for webdav authorisation"
  self
    attributeAt: self cryptPasswordDescription
    put: (ZnUtils encodeBase64: userName asString , ':' , newPassword asString)