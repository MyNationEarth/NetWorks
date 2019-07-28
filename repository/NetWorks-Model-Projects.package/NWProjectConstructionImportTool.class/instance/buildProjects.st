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
                        at: #'constructionProjectType'
                        ifPresent: [ :value | project constructionProjectType: (self cleanString: value) ].
                      row
                        at: #'constructionBuildType'
                        ifPresent: [ :value | project constructionBuildType: (self cleanString: value) ].
                      row
                        at: #'sam'
                        ifPresent: [ :value | project sam: (self cleanString: value) ].
                      row
                        at: #'clientContact'
                        ifPresent: [ :value | project clientContact: (self cleanString: value) ].
                      row
                        at: #'efscdDate'
                        ifPresent: [ :value | project efscdDate: (self dateFromString: value) ].
                      row
                        at: #'constructionProjectLead'
                        ifPresent: [ :value | project constructionProjectLead: (self cleanString: value) ].
                      row
                        at: #'constructionStatus'
                        ifPresent: [ :value | project constructionStatus: (self cleanString: value) ].
                      row
                        at: #'constructionSiteContact'
                        ifPresent: [ :value | project constructionSiteContact: (self cleanString: value) ].
                      row
                        at: #'constructionLeadInReady'
                        ifPresent: [ :value | project constructionLeadInReady: (self booleanFromString: value) ].
                      row
                        at: #'constructionCommsRoomReady'
                        ifPresent: [ :value | project constructionCommsRoomReady: (self booleanFromString: value) ].
                      row
                        at: #'constructionInternalPathwayReady'
                        ifPresent: [ :value | project constructionInternalPathwayReady: (self booleanFromString: value) ].
                      row
                        at: #'constructionTestAndCoiled'
                        ifPresent: [ :value | project constructionTestAndCoiled: (self booleanFromString: value) ].
                      row
                        at: #'constructionLAANCommenceDate'
                        ifPresent: [ :value | project constructionLAANCommenceDate: (self dateFromString: value) ].
                      row
                        at: #'constructionDesignForecastSubmissionDate'
                        ifPresent: [ :value | project constructionDesignForecastSubmissionDate: (self dateFromString: value) ].
                      row
                        at: #'constructionDesignActualSubmissionDate'
                        ifPresent: [ :value | project constructionDesignActualSubmissionDate: (self dateFromString: value) ].
                      row
                        at: #'constructionForecastStartDate'
                        ifPresent: [ :value | project constructionForecastStartDate: (self dateFromString: value) ].
                      row
                        at: #'constructionActualStartDate'
                        ifPresent: [ :value | project constructionActualStartDate: (self dateFromString: value) ].
                      row
                        at: #'constructionForecastCompleteDate'
                        ifPresent: [ :value | project constructionForecastCompleteDate: (self dateFromString: value) ].
                      row
                        at: #'constructionActualCompleteDate'
                        ifPresent: [ :value | project constructionActualCompleteDate: (self dateFromString: value) ].
                      row
                        at: #'constructionFollowUpDate'
                        ifPresent: [ :value | project constructionFollowUpDate: (self dateFromString: value) ].
                      row
                        at: #'constructionForecastPCSubmitDate'
                        ifPresent: [ :value | project constructionForecastPCSubmitDate: (self dateFromString: value) ].
                      row
                        at: #'constructionActualPCSubmitDate'
                        ifPresent: [ :value | project constructionActualPCSubmitDate: (self dateFromString: value) ].
                      row
                        at: #'constructionComments'
                        ifPresent: [ :value | 
                          "self decodeNotes: value forProject: project"
                          project
                            constructionComments: (self cleanString: value) ] ] ] ] ] ]