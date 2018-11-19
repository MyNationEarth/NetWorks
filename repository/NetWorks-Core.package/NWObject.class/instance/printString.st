Printing
printString
  | printStream |
  printStream := WriteStream on: String new.
  printStream
    nextPutAll: super printString;
    nextPut: $(.
  1 to: self class instSize do: [ :index | 
    | instVar |
    printStream nextPutAll: (self class instVarNames at: index).
    printStream nextPut: $:.
    instVar := self instVarAt: index.
    printStream nextPutAll: instVar printString.
    printStream nextPutAll: ', ' ].
  ^ printStream contents