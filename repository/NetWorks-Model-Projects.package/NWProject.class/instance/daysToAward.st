Accessing
daysToAward
  "Answer the numnber of days between projectQuoteSubmittedDate and projectAwardedDate"

  (projectQuoteSubmittedDate isNil or: [ projectAwardedDate isNil ])
    ifTrue: [ ^ nil ].
  ^ (projectAwardedDate - projectQuoteSubmittedDate) days