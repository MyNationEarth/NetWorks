rendering
renderProjectsCompletedThisMonthBoxOn: canvas
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          canvas
            render:
              (AdminLTEInfoBoxWidget new
                icon: #'briefcase';
                label: 'Projects Completed This Month';
                number:
                    (self organisationModel projects
                        select: [ :project | 
                          project pcHandedOverDate notNil
                            and: [ project pcHandedOverDate monthIndex = Date today monthIndex ] ])
                        size;
                widgetColor: 'aqua';
                yourself) ]