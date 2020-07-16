accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'lineItems';
            at: #'label' put: 'Line Items';
            at: #'icon' put: #'list';
            at: #'accessRoleNames' put: #('invoiceTabLineItems');
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
    yourself