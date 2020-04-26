Accessing
daysfromRaisedToClosed
  "Answer the numnber of days between raisedDate and closedDate"

  (closedDate isNil or: [ raisedDate isNil ])
    ifTrue: [ ^ nil ].
  ^ (closedDate - raisedDate) days