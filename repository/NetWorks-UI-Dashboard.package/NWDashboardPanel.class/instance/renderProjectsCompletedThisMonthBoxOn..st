rendering
renderProjectsCompletedThisMonthBoxOn: canvas
  | year month |
  year := Date today year.
  month := Date today monthIndex.
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          canvas
            render:
              (AdminLTEInfoBoxWidget new
                icon: #'briefcase';
                label: 'Completed This Month';
                number:
                    (self organisationModel projects
                        select: [ :project | 
                          project pcHandedOverDate notNil
                            and: [ 
                              project pcHandedOverDate year = year
                                and: [ project pcHandedOverDate monthIndex = month ] ] ])
                        size;
                widgetColor: 'aqua';
                yourself) ]