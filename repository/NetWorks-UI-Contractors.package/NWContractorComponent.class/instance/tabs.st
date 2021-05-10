accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'files';
            at: #'label' put: 'Files';
            at: #'icon' put: #'filesOutlined';
            at: #'accessRoleNames' put: #('contractorTabFiles');
            at: #'callback'
              put: [ 
                  announcer announce: (NWTabSelected tab: #'files').
                  components removeKey: #'finder' ifAbsent: [  ] ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'subContractors';
            at: #'label' put: 'Sub-Contractors';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'subContractors') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'xero';
            at: #'label' put: 'Xero';
            at: #'icon' put: #'dollar';
            at: #'accessRoleNames' put: #('xeroIntegration');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'xero') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'invoices';
            at: #'label' put: 'Invoices';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'invoices') ];
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
            at: #'id' put: #'agreements';
            at: #'label' put: 'Agreements';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'agreements') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'insurance';
            at: #'label' put: 'Insurance';
            at: #'icon' put: #'wrench';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'insurance') ];
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