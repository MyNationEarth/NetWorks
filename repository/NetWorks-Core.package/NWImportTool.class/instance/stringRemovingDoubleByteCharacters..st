conversion
stringRemovingDoubleByteCharacters: dirtyString
  "Answer a sting with any doubleByte characters removed or replaced"

  | cleanStream |
  cleanStream := WriteStream on: String new.
  dirtyString
    do: [ :char | 
      char charCode < 127
        ifTrue: [ cleanStream nextPut: char ]
        ifFalse: [ 
          (#(8208 226) includes: char charCode)
            ifTrue: [ cleanStream nextPut: $- ]	"en-dash to hyphen NOTE: Also for some reason ascii 226 also can be a hyphen ?!?!?" ] ].
  ^ cleanStream contents