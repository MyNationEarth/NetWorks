chart
cleanDirtyEdgeBrowserDateString: dirtyDateString
  "Edge Browser is so shit that we need to clean anything it sends back to make it usable"

  ^ String
    streamContents: [ :str | 
      dirtyDateString
        do: [ :char | 
          char asciiValue < 128
            ifTrue: [ str nextPut: char ] ] ]