accessing
removeComponentAt: aKey
  ^ (components keys includes: aKey)
    ifTrue: [ components removeKey: aKey ]