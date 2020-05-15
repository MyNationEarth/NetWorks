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
              | material |
              "Add material to store"
              material := NetWorks instance organisationModels values first
                materials detect: [ :m | m title = title ].
              materialsOnHand
                add:
                  (NWMaterialOnHand new
                    materialStore: materialStore;
                    material: material;
                    yourself) ])
            ifNotNil: [ :materialOnHand | 
              materialOnHand
                ifNotNil: [ 
                  materialOnHand
                    quantity: (self numberFromString: (row at: #'quantity'));
                    faultyQuantity:
                        (self numberFromString: (row at: #'faultyQuantity')) ] ] ] ]