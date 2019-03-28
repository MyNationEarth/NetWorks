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
      "self isDebug
        ifTrue: [ self halt ]."
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
              rateCategories
                add:
                  (category := NWRateCategory new
                    title: 'Untitled';
                    yourself).
              row
                at: #'sorCode'
                ifPresent: [ :sorCodePrefix | 
                  category
                    title: sorCodePrefix;
                    sorCodePrefix: sorCodePrefix ].
              row
                at: #'sorDescription'
                ifPresent: [ :sorDescription | 
                  category comment: sorDescription.	"If there is no title, use the sorDescription to ensure title is not nil or blank"
                  category title ifNil: [ category title: sorDescription ] ] ]
            ifTrue: [ 
              | rate |
              "Add Rate"
              category addRate: (rate := NWRate new).
              row
                at: #'sorCode'
                ifPresent: [ :sorCode | 
                  rate
                    title: sorCode;
                    sorCode: sorCode ].
              row
                at: #'sorDescription'
                ifPresent: [ :sorComment | rate comment: sorComment ].
              row
                at: #'unitOfMeasurement'
                ifPresent: [ :unitOfMeasureComment | rate unitOfMeasureComment: unitOfMeasureComment ].
              row
                at: #'valuePerUnit'
                ifPresent: [ :valuePerUnit | rate valuePerUnit: (self numberFromString: valuePerUnit) ].	"Check for nil inst vars and create defaults."
              rate title ifNil: [ rate title: 'Unititled' ].
              rate sorCode ifNil: [ rate sorCode: 'Undefined' ] ] ] ]