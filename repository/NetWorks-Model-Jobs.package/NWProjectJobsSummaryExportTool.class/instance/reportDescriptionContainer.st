export file
reportDescriptionContainer
  | template |
  template := NWJobLineItem new.
  ^ template projectTitleDescription , template jobTitleDescription
    , template jobCommentDescription
    , template lineItemTypeTitleAndCommentDescription
    , template quantityDescription
    , template workOrderLineItemsCompleteQuantityDescription
    , template workOrderLineItemsCompleteByContractorSummaryDescription
    , template workOrderLineItemsAreFieldCompleteDescription
    , template rateValuePerUnitDescription
    , template rateExtendedValueDescription , template clientInvoicesDescription