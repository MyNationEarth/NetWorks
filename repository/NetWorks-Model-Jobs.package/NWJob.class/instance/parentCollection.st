Accessing
parentCollection
  ^ self parent ifNotNil: [ :parentProject | parentProject jobs ]