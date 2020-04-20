accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'access';
            at: #'label' put: 'Access';
            at: #'icon' put: #'user';
            at: #'accessRoleNames' put: #('contractorContactTabAccess');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'access') ];
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