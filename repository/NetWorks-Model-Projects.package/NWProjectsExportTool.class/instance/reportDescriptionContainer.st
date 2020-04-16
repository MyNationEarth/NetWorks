export file
reportDescriptionContainer
  | template |
  template := NWProject new.
  ^ template contractTitleDescription , template areaDescription
    , template projectEngineerDescription , template invoiceNumberDescription
    , template invoiceCreatedDateDescription
    , template pcHandedOverDateDescription
    , template pcRequestSubmittedDateDescription , template pcDueDateDescription
    , template variationRequestSubmittedDateDescription
    , template variationApprovedDateDescription
    , template projectAwardedDateDescription , template paymentDateDescription
    , template efscdDateDescription , template titleDescription
    , template suburbDescription , template cspoValueDescription
    , template variationValueDescription , template totalRevenueDescription
    , template djcCostDescription , template internalDjcCostDescription
    , template internalConstructionCostDescription
    , template totalCostDescription , template marginValueDescription
    , template marginPercentageDescription , template statusDescription
    , template clientContactDescription
    , template commencementPaymentDescription
    , template commencementInvoiceCreatedDateDescription
    , template finalPaymentDescription