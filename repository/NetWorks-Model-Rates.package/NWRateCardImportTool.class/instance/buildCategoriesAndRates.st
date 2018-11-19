Importing
buildCategoriesAndRates
  | category |
  rateCategories := OrderedCollection new.
  rows
    from: 2
    to: rows size
    do: [ :row | 
      (row includesKey: #'unitOfMeasurement')
        ifFalse: [ 
          "Add Category"
          rateCategories add: (category := NWRateCategory new).	"New Rate Category"
          row
            at: #'sorCode'
            ifPresent: [ :sorCodePrefix | category sorCodePrefix: sorCodePrefix ].
          row
            at: #'sorDescription'
            ifPresent: [ :sorDescription | category comment: sorDescription ] ]
        ifTrue: [ 
          | rate |
          "Add Rate"
          category addRate: (rate := NWRate new).
          row at: #'sorCode' ifPresent: [ :sorCode | rate sorCode: sorCode ].
          row
            at: #'sorDescription'
            ifPresent: [ :sorComment | rate comment: sorComment ].
          row
            at: #'unitOfMeasurement'
            ifPresent: [ :unitOfMeasureComment | rate unitOfMeasureComment: unitOfMeasureComment ].
          row
            at: #'valuePerUnit'
            ifPresent: [ :valuePerUnit | rate valuePerUnit: valuePerUnit ] ] ]