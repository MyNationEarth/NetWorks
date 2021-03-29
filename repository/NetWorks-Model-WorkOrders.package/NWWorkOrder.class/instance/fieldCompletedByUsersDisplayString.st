Accessing
fieldCompletedByUsersDisplayString
  ^ String
    streamContents: [ :str | 
      self fieldCompleteByUsers
        do: [ :user | str nextPutAll: user displayName ]
        separatedBy: [ str nextPutAll: ', ' ] ]