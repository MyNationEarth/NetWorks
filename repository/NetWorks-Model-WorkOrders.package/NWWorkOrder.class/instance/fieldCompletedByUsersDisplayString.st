Accessing
fieldCompletedByUsersDisplayString
  ^ String
    streamContents: [ :str | 
      self fieldCompletedByUsers
        do: [ :user | str nextPutAll: user displayName ]
        separatedBy: [ str nextPutAll: ', ' ] ]