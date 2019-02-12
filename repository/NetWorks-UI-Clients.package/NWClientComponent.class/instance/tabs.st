accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'contracts';
            at: #'label' put: 'Contracts';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'contracts') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'contacts';
            at: #'label' put: 'Contacts';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'contacts') ];
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