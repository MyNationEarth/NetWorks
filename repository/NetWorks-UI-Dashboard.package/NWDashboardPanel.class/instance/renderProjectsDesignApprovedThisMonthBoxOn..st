rendering
renderProjectsDesignApprovedThisMonthBoxOn: canvas
  | year month projectsThisMonth projectBox |
  year := Date today year.
  month := Date today monthIndex.
  projectsThisMonth := self organisationModel projects
    select: [ :project | project designApprovedMonth: month year: year ].
  projectBox := AdminLTEInfoBoxWidget new
    icon: #'briefcase';
    label: 'Designs Approved This Month';
    number:
        (projectsThisMonth
            inject: 0
            into: [ :tally :project | tally + (project designsApprovedMonth: month year: year) ]);
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
                                    'Design Approved in ' , (Date nameOfMonth: month);
                                searchResult: projectsThisMonth;
                                yourself)) ];
                with: [ canvas render: projectBox ] ]
            ifFalse: [ canvas render: projectBox ] ]