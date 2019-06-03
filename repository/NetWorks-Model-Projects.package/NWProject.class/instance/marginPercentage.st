Accessing
marginPercentage
  "^ marginPercentage"

  "Answer the percentage of totalCost that is the margin"

  self totalRevenue = 0
    ifTrue: [ ^ 0 ].
  ^ self marginValue / self totalRevenue * 100 roundTo: 1