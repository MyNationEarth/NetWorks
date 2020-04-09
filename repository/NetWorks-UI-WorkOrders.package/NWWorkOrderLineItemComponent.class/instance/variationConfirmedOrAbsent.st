actions
variationConfirmedOrAbsent
  | template qty qtyComplete |
  template := NWWorkOrderLineItem new.
  (qtyComplete := self memento readUsing: template quantityCompleteDescription)
    > (qty := self memento readUsing: template quantityDescription)
    ifTrue: [ 
      self
        call:
          (self variationConfirmationComponent
            requestedQuantity: qty;
            completedQuantity: qtyComplete;
            yourself)
        onAnswer: [ :answer | ^ answer ] ].
  ^ true