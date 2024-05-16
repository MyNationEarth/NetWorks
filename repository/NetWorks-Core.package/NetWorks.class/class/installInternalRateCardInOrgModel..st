rateCards
installInternalRateCardInOrgModel: orgModel
  orgModel rateCards
    detect: [ :rateCard | rateCard title = 'Internal Rate Card' ]
    ifNone: [ orgModel rateCards add: self defaultInternalRateCard ]