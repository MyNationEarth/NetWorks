rendering
renderClientsInfoBoxOn: canvas
  | clientsBox |
  clientsBox := AdminLTEInfoBoxWidget new
    icon: #'buildingOutlined';
    label: 'Clients';
    number: self organisationModel clients size;
    widgetColor: 'aqua';
    yourself.
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'menuClients')
            ifTrue: [ 
              canvas anchor
                callback: [ 
                      self rootAnnouncer
                        announce:
                          (AdminLTEPanelSelected panel: (self parent panelOfType: NWClientsPanel)) ];
                with: [ canvas render: clientsBox ] ]
            ifFalse: [ canvas render: clientsBox ] ]