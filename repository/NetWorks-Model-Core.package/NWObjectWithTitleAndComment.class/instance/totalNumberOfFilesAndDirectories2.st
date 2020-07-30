file system
totalNumberOfFilesAndDirectories2
  | cmd |
  cmd := String
    streamContents: [ :stream | 
      stream
        nextPutAll: 'ls -lR "';
        nextPutAll: self fileDirectory fullName;
        nextPutAll: '" | wc -l' ].
  ^ Number fromString: (System performOnServer: cmd) trimBoth