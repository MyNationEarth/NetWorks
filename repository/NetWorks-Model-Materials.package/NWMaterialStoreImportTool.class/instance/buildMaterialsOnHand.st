Importing
buildMaterialsOnHand
  | materialsOnHand |
  materialsOnHand := materialStore materialsOnHand.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      row
        at: #'materialTitle'
        ifPresent: [ :title | 
          (materialsOnHand
            detect: [ :moh | moh materialTitle = title ]
            ifNone: [ 
              "Add material to store"
              nil ])
            ifNotNil: [ :materialOnHand | 
              materialOnHand
                ifNotNil: [ 
                  materialOnHand
                    quantity: (self numberFromString: (row at: #'quantity'));
                    faultyQuantity:
                        (self numberFromString: (row at: #'faultyQuantity')) ] ] ] ]