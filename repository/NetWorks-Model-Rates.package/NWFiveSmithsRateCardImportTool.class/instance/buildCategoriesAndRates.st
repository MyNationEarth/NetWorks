Importing
buildCategoriesAndRates
  "Add or update customers, contracts and rates"

  | rateCards orgModel category processRow |
  orgModel := NetWorks fiveSmiths.
  rateCards := Dictionary new.
  processRow := false.
  rows
    do: [ :row | 
      | client contract rate |
      "self isDebug
        ifTrue: [ self halt ]."
      row notEmpty
        ifTrue: [ 
          processRow
            ifFalse: [ 
              "Is this the header Row? If so set process to true to start processing rows"
              row
                at: #'sorCode'
                ifPresent: [ :sorCode | processRow := sorCode = 'Item Code' ] ]
            ifTrue: [ 
              row
                at: #'client'
                ifPresent: [ :clientTitle | 
                  client := orgModel clients
                    detect: [ :c | c title = clientTitle ]
                    ifNone: [ 
                      orgModel clients
                        add:
                          (NWClient new
                            title: clientTitle;
                            yourself) ] ].
              row
                at: #'contract'
                ifPresent: [ :contractTitle | 
                  contract := orgModel contracts
                    detect: [ :c | c title = contractTitle ]
                    ifNone: [ 
                      | newContract |
                      orgModel contracts
                        add:
                          (newContract := NWContract new
                            title: contractTitle;
                            client: client;
                            yourself).
                      client contracts add: newContract.
                      newContract ] ].
              category := (rateCards
                at: contract
                ifAbsent: [ 
                  | newRateCard |
                  newRateCard := self newRateCardWithDefaultCategory.
                  newRateCard title: contract title , ' Rate Card'.
                  newRateCard rateCardType: 'Client'.
                  newRateCard
                    comment:
                      'Rate card imported on ' , Date today AustralianDateFormat.
                  rateCards at: contract put: newRateCard ])
                rateCategories first.	"Add Rate"
              category
                addRate:
                  (rate := NWRate new
                    rateCategory: category;
                    yourself).
              row
                at: #'sorCode'
                ifPresent: [ :sc | 
                  | sorCode |
                  sorCode := self stringRemovingDoubleByteCharacters: sc.
                  (sorCode isKindOf: DoubleByteString)
                    ifTrue: [ self error: 'SOR still contains DoubleByteCharacters' ].
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
              rate sorCode ifNil: [ rate sorCode: 'Undefined' ] ] ] ].
  ^ rateCards