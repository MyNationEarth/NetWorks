Importing
buildProjects
  | projects |
  projects := (NetWorks instance organisationModels at: #'datateks.com.au')
    projects.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      row notEmpty
        ifTrue: [ 
          | aycaNumber notes |
          row
            at: #'ayca'
            ifPresent: [ :value | 
              aycaNumber := self stringFrom: value regex: 'AYCA-([0-9A-Z]+)' subexpression: 2.
              (projects
                detect: [ :p | p aycaNumber = aycaNumber ]
                ifNone: [ nil ])
                ifNotNil: [ :project | 
                  row
                    at: #'notes'
                    ifPresent: [ :value | 
                      value
                        ifNotEmpty: [ 
                          (value substrings: Character lf)
                            do: [ :note | 
                              note trimBoth
                                ifNotEmpty: [ 
                                  | day month date |
                                  day := self
                                    numberFromString:
                                      (note trimBoth copyFrom: 1 to: 2).
                                  month := self
                                    numberFromString:
                                      (note trimBoth copyFrom: 4 to: 5).
                                  date := DateAndTime
                                    year:
                                      (month > 4
                                        ifTrue: [ 2018 ]
                                        ifFalse: [ 2019 ])
                                    month: month
                                    day: day.
                                  project notes
                                    add:
                                      (NWNote new
                                        title:
                                            (self cleanString: (note copyFrom: 6 to: note size));
                                        dateAndTime: date;
                                        yourself) ] ] ] ] ] ] ] ]