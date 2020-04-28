actions
save
  | template qtyComplete qty |
  self memento hasChanged
    ifFalse: [ super save ]
    ifTrue: [ 
      template := NWWorkOrderLineItem new.
      (qtyComplete := self memento
        readUsing: template quantityCompleteDescription)
        > (qty := self memento readUsing: template quantityDescription)
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