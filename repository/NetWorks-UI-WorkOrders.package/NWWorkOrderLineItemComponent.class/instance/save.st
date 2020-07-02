actions
save
  | template qtyComplete qty |
  self validate
    ifFalse: [ ^ self ].
  self memento hasChanged
    ifFalse: [ super save ]
    ifTrue: [ 
      template := NWWorkOrderLineItem new.
      (qtyComplete := (self memento
        readUsing: template quantityCompleteDescription) ifNil: [ 0 ])
        >
          (qty := (self memento readUsing: template quantityDescription) ifNil: [ 0 ])
        ifFalse: [ super save ]
        ifTrue: [ 
          self
            call:
              (self variationConfirmationComponent
                requestedQuantity: qty;
                completedQuantity: qtyComplete;
                yourself)
            onAnswer: [ :answer | 
              answer
                ifTrue: [ super save ] ] ] ]