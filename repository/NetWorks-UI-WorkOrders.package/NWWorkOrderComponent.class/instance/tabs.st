accessing
tabs
  ^ OrderedCollection new
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