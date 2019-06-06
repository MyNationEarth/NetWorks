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
                    at: #'efscd'
                    ifPresent: [ :value | project efscdDate: (self dateFromString: value) ].
                  row
                    at: #'status'
                    ifPresent: [ :value | project status: value asTitlecase ].
                  row
                    at: #'notes'
                    ifPresent: [ :value | 
                      "self decodeNotes: value forProject: project"
                       ] ] ] ] ]