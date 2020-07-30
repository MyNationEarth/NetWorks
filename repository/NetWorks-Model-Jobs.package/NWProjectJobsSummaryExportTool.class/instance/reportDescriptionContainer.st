export file
reportDescriptionContainer
  | template |
  template := NWJobLineItem new.
  ^ template projectTitleDescription , template jobTitleDescription
    , template lineItemTypeTitleDescription , template quantityDescription
    , template workOrderLineItemsCompleteQuantityDescription