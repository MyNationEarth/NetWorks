Accessing
allRates
  "Answer all NWRates for this RateCard"

  | allRates |
  allRates := OrderedCollection new.
  self rateCategories
    do: [ :rateCategory | allRates addAll: rateCategory rates ].
  ^ allRates