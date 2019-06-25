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
            ifPresent: [ :identifier | 
              aycaNumber := self
                stringFrom: identifier
                regex: '(AYCA-[0-9A-Z]+)'
                subexpression: 2.
              (projects
                detect: [ :p | p aycaNumber = aycaNumber ]
                ifNone: [ nil ])
                ifNotNil: [ :project | 
                  row at: #'sam' ifPresent: [ :value | project sam: (self cleanString: value) ].
                  row
                    at: #'designStatus'
                    ifPresent: [ :value | project designStatus: (self cleanString: value) ].
                  row
                    at: #'buildType'
                    ifPresent: [ :value | project buildType: (self cleanString: value) ].
                  row
                    at: #'buildSubType'
                    ifPresent: [ :value | project buildSubType: (self cleanString: value) ].
                  row
                    at: #'designSowReceivedDate'
                    ifPresent: [ :value | project designSowReceivedDate: (self dateFromString: value) ].
                  row
                    at: #'designDDDSubmissionForecastDate'
                    ifPresent: [ :value | project designDDDSubmissionForecastDate: (self dateFromString: value) ].
                  row
                    at: #'designDDDActualSubmissionDate'
                    ifPresent: [ :value | project designDDDActualSubmissionDate: (self dateFromString: value) ].
                  row
                    at: #'designDDDResubmissionDate'
                    ifPresent: [ :value | project designDDDResubmissionDate: (self dateFromString: value) ].
                  row
                    at: #'designDDDApprovedDate'
                    ifPresent: [ :value | project designDDDApprovedDate: (self dateFromString: value) ].
                  row
                    at: #'designLAANSubmissionDate'
                    ifPresent: [ :value | project designLAANSubmissionDate: (self dateFromString: value) ].
                  row
                    at: #'designHECSubmissionDate'
                    ifPresent: [ :value | project designHECSubmissionDate: (self dateFromString: value) ].
                  row
                    at: #'designHECApprovalDate'
                    ifPresent: [ :value | project designHECApprovalDate: (self dateFromString: value) ].
                  row
                    at: #'designLAANStartDate'
                    ifPresent: [ :value | project designLAANStartDate: (self dateFromString: value) ].
                  row
                    at: #'designNotes'
                    ifPresent: [ :value | 
                      "self decodeNotes: value forProject: project"
                      project designNotes: (self cleanString: value) ] ] ] ] ]