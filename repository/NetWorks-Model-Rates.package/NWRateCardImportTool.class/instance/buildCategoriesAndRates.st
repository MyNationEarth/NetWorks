Importing
buildCategoriesAndRates
  | category processRow |
  (rateCategories := OrderedCollection new)
    add:
      (category := NWRateCategory new
        title: 'Uncategorised Rates';
        comment:
            'Rates from impoted rate cards that do not have a defined category.';
        yourself).
  processRow := false.
  rows
    do: [ :row | 
      processRow
        ifFalse: [ 
          "Is this the header Row? If so set process to true to start processing rows"
          row
            at: #'sorCode'
            ifPresent: [ :sorCode | processRow := sorCode = 'Item ID' ] ]
        ifTrue: [ 
          (row includesKey: #'unitOfMeasurement')
            ifFalse: [ 
              "Add Category"
              rateCategories add: (category := NWRateCategory new).	"New Rate Category - ensuer title is not nil"
              category title: ''.
              row
                at: #'sorCode'
                ifPresent: [ :sorCodePrefix | 
                  category
                    title: sorCodePrefix;
                    sorCodePrefix: sorCodePrefix ].
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
                ifPresent: [ :valuePerUnit | rate valuePerUnit: valuePerUnit ] ] ] ]