accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'projectLineItems';
            at: #'label' put: 'CSPO';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'projectLineItems') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'templates';
            at: #'label' put: 'Templates';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'templates') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'Identifiers';
            at: #'label' put: 'Identifiers';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'Identifiers') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'basics';
            at: #'label' put: 'Basics';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself	" add:
        (Dictionary new
            at: #'id' put: #'contacts';
            at: #'label' put: 'Contacts';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'contacts') ];
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
            at: #'id' put: #'location';
            at: #'label' put: 'Location';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'location') ];
            yourself);"