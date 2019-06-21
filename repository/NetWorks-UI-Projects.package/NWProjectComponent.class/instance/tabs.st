accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'templates';
            at: #'label' put: 'Submission Documents';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'templates') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'financials';
            at: #'label' put: 'Financials';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'financials') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'lasa';
            at: #'label' put: 'LASA';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'lasa') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'notes';
            at: #'label' put: 'Notes';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'notes') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'design';
            at: #'label' put: 'Design';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'design') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'basics';
            at: #'label' put: 'Project Info';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself	"add:
        (Dictionary new
            at: #'id' put: #'dates';
            at: #'label' put: 'Dates';
            at: #'icon' put: #'calendar';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'dates') ];
            yourself);"	"add:
        (Dictionary new
            at: #'id' put: #'projectLineItems';
            at: #'label' put: 'CSPO';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'projectLineItems') ];
            yourself);"	"add:
        (Dictionary new
            at: #'id' put: #'invoice';
            at: #'label' put: 'Invoice';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'invoice') ];
            yourself);"