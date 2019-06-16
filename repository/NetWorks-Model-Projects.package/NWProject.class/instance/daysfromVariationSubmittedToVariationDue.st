Accessing
daysfromVariationSubmittedToVariationDue
  "Answer the numnber of days between variationRequestSubmittedDate and variationApprovedDate"

  (variationApprovedDate isNil or: [ variationRequestSubmittedDate isNil ])
    ifTrue: [ ^ nil ].
  ^ (variationApprovedDate - variationRequestSubmittedDate) days