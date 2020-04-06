visiting-description
visitDateDescription: aDescription
  | string |
  string := self contents.
  (string notEmpty
    and: [ string allSatisfy: [ :each | '0123456789/' includes: each ] ])
    ifFalse: [ MAReadError signal ].
  self
    object:
      (DateAndTime fromStream: string readStream usingFormat: #(1 2 3 $/ 1 1 $: false))