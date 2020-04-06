actions
variationConfirmedOrAbsent
  | template qty qtyComplete isConfirmed |
  template := NWWorkOrderLineItem new.
  isConfirmed := true.
  (qtyComplete := self memento readUsing: template quantityCompleteDescription)
    > (qty := self memento readUsing: template quantityDescription)
    ifTrue: [ 
      self
        call:
          (NWVariationConfirmation new
            requestedQuantity: qty;
            completedQuantity: qtyComplete;
            yourself)
        onAnswer: [ :confirmed | isConfirmed := confirmed ] ].
  ^ isConfirmed