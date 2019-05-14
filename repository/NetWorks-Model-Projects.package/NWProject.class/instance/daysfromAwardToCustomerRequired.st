Accessing
daysfromAwardToCustomerRequired
  "Answer the numnber of days between projectAwardedDate and customerRequiredDate"

  (customerRequiredDate isNil or: [ projectAwardedDate isNil ])
    ifTrue: [ ^ nil ].
  ^ (customerRequiredDate - projectAwardedDate) days