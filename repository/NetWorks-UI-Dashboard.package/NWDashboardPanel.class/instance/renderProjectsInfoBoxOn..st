rendering
renderProjectsInfoBoxOn: canvas
  | projectBox |
  projectBox := AdminLTEInfoBoxWidget new
    icon: #'briefcase';
    label: 'Projects';
    number: self organisationModel projects size;
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
                          (AdminLTEPanelSelected panel: (self parent panelOfType: NWProjectsPanel)) ];
                with: [ canvas render: projectBox ] ]
            ifFalse: [ canvas render: projectBox ] ]