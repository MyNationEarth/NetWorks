rendering
renderProjectsAwardedThisMonthBoxOn: canvas
  | year month projectsThisMonth projectBox |
  year := Date today year.
  month := Date today monthIndex.
  projectsThisMonth := self organisationModel projects
    select: [ :project | 
      project projectAwardedDate notNil
        and: [ 
          project projectAwardedDate year = year
            and: [ project projectAwardedDate monthIndex = month ] ] ].
  projectBox := AdminLTEInfoBoxWidget new
    icon: #'briefcase';
    label: 'Awarded This Month';
    number: projectsThisMonth size;
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
                                    'Awarded in ' , (Date nameOfMonth: month);
                                searchResult: projectsThisMonth;
                                yourself)) ];
                with: [ canvas render: projectBox ] ]
            ifFalse: [ canvas render: projectBox ] ]