actions
saveAndRemainOpen
  | template qtyComplete qty |
  self memento hasChanged
    ifFalse: [ super saveAndRemainOpen ]
    ifTrue: [ 
      template := NWWorkOrderLineItem new.
      (qtyComplete := self memento
        readUsing: template quantityCompleteDescription)
        > (qty := self memento readUsing: template quantityDescription)
        ifFalse: [ super saveAndRemainOpen ]
        ifTrue: [ 
          self
            call:
              (self variationConfirmationComponent
                requestedQuantity: qty;
                completedQuantity: qtyComplete;
                yourself)
            onAnswer: [ :answer | 
              answer
                ifTrue: [ super saveAndRemainOpen ] ] ] ]