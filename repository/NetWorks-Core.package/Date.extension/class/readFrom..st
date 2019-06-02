*networks-core
readFrom: aStream
  "Override to support Australian Date format"

  ^ self fromStream: aStream usingFormat: #(1 2 3 $/ 1 1 $: false)