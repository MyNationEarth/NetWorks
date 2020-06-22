rendering
renderProjectsDesignApprovedThisMonthBoxOn: canvas
  | year month projectsThisMonth |
  year := Date today year.
  month := Date today monthIndex.
  projectsThisMonth := self organisationModel projects
    select: [ :project | 
      project designDDDApprovedDate notNil
        and: [ 
          project designDDDApprovedDate year = year
            and: [ project designDDDApprovedDate monthIndex = month ] ] ].
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
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
            with: [ 
                  canvas
                    render:
                      (AdminLTEInfoBoxWidget new
                        icon: #'briefcase';
                        label: 'Design Approved This Month';
                        number: projectsThisMonth size;
                        widgetColor: 'aqua';
                        yourself) ] ]