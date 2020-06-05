initialization
cleanStringRemovingNonASCII: dirtyString
  "Answer a sting with no spaces or symbols at the start or end"

  | cleanStream |
  cleanStream := WriteStream on: String new.
  dirtyString
    do: [ :char | 
      char codePoint < 128
        ifTrue: [ cleanStream nextPut: char ] ].
  ^ cleanStream contents trimBoth