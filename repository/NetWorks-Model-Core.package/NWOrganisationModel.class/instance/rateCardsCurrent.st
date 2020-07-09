Accessing
rateCardsCurrent
  "Answer the rateCard that have no end date or an end date after today, and either no start date, or a start date before today"

  ^ rateCards
    select: [ :rateCard | 
      (rateCard endDate isNil or: [ rateCard endDate > Date today ])
        and: [ rateCard startDate isNil or: [ rateCard startDate < Date today ] ] ]