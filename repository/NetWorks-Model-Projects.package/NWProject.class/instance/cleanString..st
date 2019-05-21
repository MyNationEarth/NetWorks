initialization
cleanString: dirtyString
  "Answer a sting with no spaces or symbols at the start or end"

  | isCleaning cleanStream |
  isCleaning := true.
  cleanStream := WriteStream on: String new.
  dirtyString
    do: [ :char | 
      isCleaning
        ifFalse: [ cleanStream nextPut: char ]
        ifTrue: [ 
          ('- ' includes: char)
            ifFalse: [ 
              isCleaning := false.
              cleanStream nextPut: char ] ] ].
  ^ cleanStream contents