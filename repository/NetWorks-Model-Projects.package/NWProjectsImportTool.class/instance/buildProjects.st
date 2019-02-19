Importing
buildProjects
  | projects contracts contractA417 contractA401 contractNBN |
  projects := (NetWorks instance organisationModels at: #'datateks.com.au')
    projects.
  contracts := (NetWorks instance organisationModels at: #'datateks.com.au')
    contracts.
  contractA417 := contracts detect: [ :c | c title = 'A417 New Devs' ].
  contractA401 := contracts detect: [ :c | c title = 'A401 Request for Quote' ].
  contractNBN := contracts detect: [ :c | c title = 'NBN Assurance' ].
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      | temp fsamMps project contract minorWorksNumber aycaNumber fsam address |
      fsamMps := row at: #'fsamMps'.
      minorWorksNumber := self
        stringFrom: fsamMps
        regex: 'MW([0-9]+)'
        subexpression: 2.
      aycaNumber := self
        stringFrom: fsamMps
        regex: 'AYCA-([0-9A-Z]+)'
        subexpression: 2.
      minorWorksNumber notNil
        ifTrue: [ 
          project := projects
            detect: [ :c | c minorWorksNumber = minorWorksNumber ]
            ifNone: [ 
              projects
                add:
                  (NWProject new
                    title: minorWorksNumber;
                    minorWorksNumber: minorWorksNumber;
                    aycaNumber: aycaNumber;
                    yourself) ].
          row
            at: #'contract'
            ifPresent: [ :value | 
              (value includesSubstring: 'A417')
                ifTrue: [ project contract: contractA417 ].
              (value includesSubstring: 'A401')
                ifTrue: [ project contract: contractA401 ].
              (value includesSubstring: 'NBN')
                ifTrue: [ project contract: contractNBN ] ].
          row at: #'suburb' ifPresent: [ :value | project suburb: value ].
          row
            at: #'cspoAmount'
            ifPresent: [ :value | project cspoValue: (self numberFromString: value) ].
          row
            at: #'nbnContact'
            ifPresent: [ :value | project clientContact: value ] ] ]