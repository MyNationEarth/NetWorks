accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'office';
            at: #'label' put: 'Office Use Only';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'office') ];
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