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