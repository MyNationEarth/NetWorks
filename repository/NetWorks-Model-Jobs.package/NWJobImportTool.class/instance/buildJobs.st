Importing
buildJobs
  | jobs organisationModel |
  jobs := OrderedCollection new.
  organisationModel := NWCurrentOrganisationModel value.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      row notEmpty
        ifTrue: [ 
          | contract rateCard project job lineItemType designQuantity contractors lineItem |
          row
            at: #'contract'
            ifPresent: [ :value | 
              contract := organisationModel contracts
                detect: [ :i | i title = (self cleanString: value) ]
                ifNone: [ ^ Error raiseSignal: 'Job Import: No Contract found for title: "' , value , '"' ] ].
          row
            at: #'rateCard'
            ifPresent: [ :value | 
              rateCard := organisationModel rateCards
                detect: [ :i | i title = (self cleanString: value) ]
                ifNone: [ ^ Error raiseSignal: 'Job Import: No RateCard found for title: "' , value , '"' ] ].
          row
            at: #'project'
            ifPresent: [ :value | 
              project := organisationModel projects
                detect: [ :i | i title = (self cleanString: value) ]
                ifNone: [ 
                  Transcript
                    show:
                      'Job Import: No Project found for title: "' , value , '" Creating a new one.'.
                  organisationModel projects
                    add:
                      (NWProject new
                        title: (self cleanString: value);
                        contract: contract;
                        yourself) ] ].
          row
            at: #'job'
            ifPresent: [ :value | 
              job := project jobs
                detect: [ :i | i title = (self cleanString: value) ]
                ifNone: [ 
                  Transcript
                    show:
                      'Job Import: No Job found in Project: "' , project title , '" for title: "'
                        , value , '" Creating a new one.'.
                  project jobs
                    add:
                      (NWJob new
                        title: (self cleanString: value);
                        project: project;
                        rateCard: rateCard;
                        yourself) ] ].
          row
            at: #'comment'
            ifPresent: [ :value | 
              (job comment isNil or: [ (job comment findPattern: {value} startingAt: 1) == 0 ])
                ifTrue: [ 
                  job
                    comment:
                      (String
                        streamContents: [ :str | 
                          (job comment notNil and: [ job comment notEmpty ])
                            ifTrue: [ 
                              str
                                nextPutAll: job comment;
                                cr ].
                          str nextPutAll: value ]) ] ].
          row
            at: #'lineItemType'
            ifPresent: [ :value | 
              (lineItemType := rateCard findRateWithTitleAndComment: value)
                ifNil: [ 
                  ^ Error
                    raiseSignal:
                      'Job Import: No Rate found in RateCard: "' , rateCard title , '" for title: "'
                        , value , '"' ] ].
          row
            at: #'designQuantity'
            ifPresent: [ :value | designQuantity := self numberFromString: value ].
          row
            at: #'contractors'
            ifPresent: [ :value | contractors := self cleanString: value ].
          lineItem := job lineItems
            detect: [ :v | v lineItemType = lineItemType ]
            ifNone: [ 
              job lineItems
                add:
                  (NWJobLineItem new
                    job: job;
                    lineItemType: lineItemType;
                    yourself) ].
          lineItem quantity: designQuantity ] ]