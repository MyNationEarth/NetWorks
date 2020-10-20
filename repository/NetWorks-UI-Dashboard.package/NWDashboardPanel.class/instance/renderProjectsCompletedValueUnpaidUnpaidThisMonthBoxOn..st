rendering
renderProjectsCompletedValueUnpaidUnpaidThisMonthBoxOn: canvas
  | year month unpaidProjects projectBox |
  year := Date today year.
  month := Date today monthIndex.
  unpaidProjects := self organisationModel projects
    select: [ :project | 
      project pcHandedOverDate notNil
        and: [ project paymentDate isNil or: [ project invoiceNumber isNil ] ] ].
  projectBox := AdminLTEInfoBoxWidget new
    icon: #'dollar';
    label: 'Unpaid Value';
    number:
        ((unpaidProjects
            inject: 0
            into: [ :value :project | value + (project finalPayment ifNil: [ 0 ]) ])
            asFloat printShowingDecimalPlaces: 0);
    actionsRenderingBlock: [ :canvas | 
          (self userHasRoleNamed: 'exportProjects')
            ifTrue: [ 
              canvas anchor
                callback: [ self respondWithProjectsSpreadsheetForProjects: unpaidProjects ];
                with: [ 
                      (canvas tag: 'i')
                        fontAwesome;
                        fontAwesomeDownloadIcon ] ] ];
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
                                criteriaLabel: 'Unpaid Projects';
                                searchResult: unpaidProjects;
                                yourself)) ];
                with: [ canvas render: projectBox ] ]
            ifFalse: [ canvas render: projectBox ] ]