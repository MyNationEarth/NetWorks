Accessing
daysfromPcSubmittedToPcDue
  "Answer the numnber of days between pcRequestSubmittedDate and pcDueDate"

  (pcDueDate isNil or: [ pcRequestSubmittedDate isNil ])
    ifTrue: [ ^ nil ].
  ^ (pcDueDate - pcRequestSubmittedDate) days