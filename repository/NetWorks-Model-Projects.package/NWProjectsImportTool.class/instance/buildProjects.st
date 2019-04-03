Importing
buildProjects
  | projects |
  projects := (NetWorks instance organisationModels at: #'datateks.com.au')
    projects.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      | temp title fsamMps project contract minorWorksNumber aycaNumber fsam address |
      fsamMps := row at: #'fsamMps'.
      minorWorksNumber := self
        stringFrom: fsamMps
        regex: '(MW[0-9A-Z]+)'
        subexpression: 2.
      temp := fsamMps
        copyReplaceAll: '' , (minorWorksNumber ifNotNil: [ minorWorksNumber ])
        with: ''.
      aycaNumber := self
        stringFrom: temp
        regex: 'AYCA-([0-9A-Z]+)'
        subexpression: 2.
      temp := temp
        copyReplaceAll: 'AYCA-' , (aycaNumber ifNotNil: [ aycaNumber ])
        with: ''.
      fsam := self
        stringFrom: temp
        regex: '([0-9][A-Z]+-[0-9][0-9])'
        subexpression: 2.
      temp := temp copyReplaceAll: fsam with: ''.
      address := self cleanString: temp.
      title := '' , minorWorksNumber asString , '|AYCA-' , aycaNumber asString
        , '|' , fsam asString , '|' , address asString.
      project := projects
        add:
          (NWProject new
            title: title;
            minorWorksNumber: minorWorksNumber;
            aycaNumber: aycaNumber;
            sam: fsam;
            address: address;
            yourself).
      row
        at: #'contract'
        ifPresent: [ :value | project contract: (self contractFromString: value) ].
      row at: #'suburb' ifPresent: [ :value | project suburb: value ].
      row
        at: #'projectEngineer'
        ifPresent: [ :value | project projectEngineer: value ].
      row at: #'location' ifPresent: [ :value | project area: value ].
      row
        at: #'cspoAmount'
        ifPresent: [ :value | project cspoValue: (self numberFromString: value) ].
      row at: #'nbnContact' ifPresent: [ :value | project clientContact: value ].
      row
        at: #'variation'
        ifPresent: [ :value | project variationValue: (self numberFromString: value) ].
      row
        at: #'totalRevenue'
        ifPresent: [ :value | project totalRevenue: (self numberFromString: value) ].
      row
        at: #'gstInc'
        ifPresent: [ :value | project gstInclusiveValue: (self numberFromString: value) ].
      row
        at: #'djcCost'
        ifPresent: [ :value | project djcCost: (self numberFromString: value) ].
      row
        at: #'internalDjcCost'
        ifPresent: [ :value | project internalDjcCost: (self numberFromString: value) ].
      row
        at: #'totalCost'
        ifPresent: [ :value | project totalCost: (self numberFromString: value) ].
      row
        at: #'margin'
        ifPresent: [ :value | project marginValue: (self numberFromString: value) ].
      row
        at: #'percentage'
        ifPresent: [ :value | project marginPercentage: (self numberFromString: value) ].
      row
        at: #'invoiceNumber'
        ifPresent: [ :value | project invoiceNumber: value ].
      row
        at: #'invoiceDate'
        ifPresent: [ :value | project invoiceCreatedDate: (self dateFromString: value) ].
      row
        at: #'variationApprovedDate'
        ifPresent: [ :value | project variationApprovedDate: (self dateFromString: value) ].
      row
        at: #'pcDueDate'
        ifPresent: [ :value | project pcDueDate: (self dateFromString: value) ].
      row
        at: #'paymentDate'
        ifPresent: [ :value | project paymentDate: (self dateFromString: value) ] ]