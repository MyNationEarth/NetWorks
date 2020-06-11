utilities
cleanUpProjectDates
  | dateDescriptions |
  NetWorks datateks
    useDuring: [ 
      dateDescriptions := NWProject new magritteDescription
        select: [ :d | d isKindOf: MADateDescription ].
      NetWorks datateks projects
        do: [ :p | 
          dateDescriptions
            do: [ :dd | 
              (p readUsing: dd)
                ifNotNil: [ :date | 
                  date year < 2000
                    ifTrue: [ 
                      "Clean up the date"
                      date year = 19
                        ifTrue: [ 
                          p
                            write:
                              (Date newDay: date dayOfMonth monthNumber: date monthIndex year: 2019)
                            using: dd ].
                      date year = 20
                        ifTrue: [ 
                          p
                            write:
                              (Date newDay: date dayOfMonth monthNumber: date monthIndex year: 2020)
                            using: dd ] ] ] ] ] ]