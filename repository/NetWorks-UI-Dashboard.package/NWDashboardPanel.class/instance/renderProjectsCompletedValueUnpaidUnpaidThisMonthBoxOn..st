rendering
renderProjectsCompletedValueUnpaidUnpaidThisMonthBoxOn: canvas
  | year month completedThisMonth projectBox |
  year := Date today year.
  month := Date today monthIndex.
  completedThisMonth := self organisationModel projects
    select: [ :project | 
      project pcHandedOverDate notNil
        and: [ project paymentDate isNil or: [ project invoiceNumber isNil ] ] ].
  projectBox := AdminLTEInfoBoxWidget new
    icon: #'dollar';
    label: 'Unpaid Value';
    number:
        ((completedThisMonth
            inject: 0
            into: [ :value :project | value + (project finalPayment ifNil: [ 0 ]) ])
            printShowingDecimalPlaces: 0);
    widgetColor: 'aqua';
    yourself.
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'menuProjects')
            ifTrue: [ 
              canvas anchor
                callback: [ 
                      self rootAnnouncer
                        announce:
                          (AdminLTEPanelSelected
                            panel:
                              (NWSelectedProjectsPanel new
                                parent: self;
                                criteriaLabel:
                                    'Completed in ' , (Date nameOfMonth: month);
                                searchResult: completedThisMonth;
                                yourself)) ];
                with: [ canvas render: projectBox ] ]
            ifFalse: [ canvas render: projectBox ] ]