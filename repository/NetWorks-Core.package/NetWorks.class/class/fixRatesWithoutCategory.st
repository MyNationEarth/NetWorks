rateCards
fixRatesWithoutCategory
  self instance organisationModels
    do: [ :org | 
      org rateCards
        do: [ :rc | 
          rc rateCategories
            do: [ :cat | cat rates do: [ :rate | rate rateCategory ifNil: [ rate rateCategory: cat ] ] ] ] ]