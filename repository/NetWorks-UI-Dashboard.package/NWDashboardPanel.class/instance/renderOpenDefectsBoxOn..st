rendering
renderOpenDefectsBoxOn: canvas
  | openDefects defectsBox |
  openDefects := self organisationModel defects
    select: [ :defect | defect closedDate isNil ].
  defectsBox := AdminLTEInfoBoxWidget new
    icon: #'exclamationTriangle';
    label: 'Open Defects';
    number: openDefects size;
    widgetColor: 'aqua';
    yourself.
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'menuQuality')
            ifTrue: [ 
              canvas anchor
                callback: [ 
                      self rootAnnouncer
                        announce:
                          (AdminLTEPanelSelected panel: (self parent panelOfType: NWDefectsPanel)) ];
                with: [ canvas render: defectsBox ] ]
            ifFalse: [ canvas render: defectsBox ] ]