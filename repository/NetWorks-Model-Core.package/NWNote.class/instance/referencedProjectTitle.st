Accessing
referencedProjectTitle
  ^ self referencedObject
    ifNotNil: [ :ref | 
      ref class == NWProject
        ifTrue: [ ref title ]
        ifFalse: [ 
          ref class == NWJob
            ifTrue: [ ref project title ]
            ifFalse: [ 
              ref class == NWWorkOrder
                ifTrue: [ ref job project title ] ] ] ]