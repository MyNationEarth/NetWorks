Importing
buildProjects
  | projects |
  projects := (NetWorks instance organisationModels at: #'datateks.com.au')
    projects.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      row notEmpty
        ifTrue: [ 
          | aycaNumber candidateProjects project notes |
          row
            at: #'ayca'
            ifPresent: [ :identifier | 
              aycaNumber := self
                stringFrom: identifier
                regex: '(AYCA-[0-9A-Z]+)'
                subexpression: 2.
              candidateProjects := projects
                select: [ :p | p aycaNumber = aycaNumber ].
              candidateProjects
                ifEmpty: [ 
                  "Error message - no ayca found"
                  Transcript
                    nextPutAll: 'No Project found with ' , aycaNumber asString;
                    cr ]
                ifNotEmpty: [ 
                  candidateProjects size == 1
                    ifFalse: [ 
                      "Error message - multiple projects found with ayca number"
                      Transcript
                        nextPutAll:
                            candidateProjects size asString , ' Projects found with ' , aycaNumber asString;
                        cr ]
                    ifTrue: [ 
                      project := candidateProjects first.
                      Transcript
                        nextPutAll:
                            'Successful import of Project with ' , aycaNumber asString;
                        cr.
                      row
                        at: #'designAssignedTo'
                        ifPresent: [ :value | project designAssignedTo: (self cleanString: value) ].
                      row
                        at: #'designAssignmentDate'
                        ifPresent: [ :value | project designAssignmentDate: (self dateFromString: value) ].
                      row
                        at: #'designETADate'
                        ifPresent: [ :value | project designETADate: (self dateFromString: value) ].
                      row
                        at: #'designStatus'
                        ifPresent: [ :value | project designStatus: (self cleanString: value) ].
                      row
                        at: #'sam'
                        ifPresent: [ :value | project sam: (self cleanString: value) ].
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
                        at: #'designSowReceivedDate'
                        ifPresent: [ :value | project designSowReceivedDate: (self dateFromString: value) ].
                      row
                        at: #'designGMLSubmissionDate'
                        ifPresent: [ :value | project designSowReceivedDate: (self dateFromString: value) ].
                      row
                        at: #'designPONPatchingRequestDate'
                        ifPresent: [ :value | project designSowReceivedDate: (self dateFromString: value) ].
                      row
                        at: #'designPONSOWReceivedDate'
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
                        at: #'designDDDStatus'
                        ifPresent: [ :value | project designDDDStatus: (self cleanString: value) ].
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
                          project designNotes: (self cleanString: value) ].
                      row
                        at: #'designNBNComments'
                        ifPresent: [ :value | 
                          "self decodeNotes: value forProject: project"
                          project designNBNComments: (self cleanString: value) ] ] ] ] ] ]