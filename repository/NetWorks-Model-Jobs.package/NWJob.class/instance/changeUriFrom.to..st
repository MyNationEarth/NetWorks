private
changeUriFrom: oldUri to: newUri
  "Simply regenerate the Uri"

  super changeUriFrom: oldUri to: newUri.
  NetWorks
    updateDirectoryNameFrom: oldUri
    to: newUri
    inDirectory: self parentDirectory