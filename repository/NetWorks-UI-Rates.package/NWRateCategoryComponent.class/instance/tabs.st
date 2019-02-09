accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'rates';
            at: #'label' put: 'Rates';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'rates') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'basics';
            at: #'label' put: 'Basics';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself