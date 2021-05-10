accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'files';
            at: #'label' put: 'Files';
            at: #'icon' put: #'filesOutlined';
            at: #'accessRoleNames' put: #('contractorContactTabFiles');
            at: #'callback'
              put: [ 
                  announcer announce: (NWTabSelected tab: #'files').
                  components removeKey: #'finder' ifAbsent: [  ] ];
            yourself);
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
            at: #'id' put: #'accreditations';
            at: #'label' put: 'Accreditations';
            at: #'icon' put: #'user';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'accreditations') ];
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