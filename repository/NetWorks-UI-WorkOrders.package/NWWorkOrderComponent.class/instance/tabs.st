accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'files';
            at: #'label' put: 'Files';
            at: #'icon' put: #'filesOutlined';
            at: #'callback'
              put: [ 
                  announcer announce: (NWTabSelected tab: #'files').
                  components removeKey: #'finder' ifAbsent: [  ] ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'notes';
            at: #'label' put: 'Notes';
            at: #'icon' put: #'list';
            at: #'accessRoleNames' put: #('projectTabNotes' 'Contractor');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'notes') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'lineItems';
            at: #'label' put: 'Work Order Line Items';
            at: #'icon' put: #'user';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'lineItems') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'basics';
            at: #'label' put: 'Basics';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself	"add:
        (Dictionary new
            at: #'id' put: #'workOrders';
            at: #'label' put: 'Work Orders';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'workOrders') ];
            yourself);"