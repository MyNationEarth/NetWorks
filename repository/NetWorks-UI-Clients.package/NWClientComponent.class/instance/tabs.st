accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'files';
            at: #'label' put: 'Commercial';
            at: #'icon' put: #'filesOutlined';
            at: #'accessRoleNames' put: #('clientTabCommercial');
            at: #'callback'
              put: [ 
                  announcer announce: (NWTabSelected tab: #'files').
                  components removeKey: #'finder' ifAbsent: [  ] ];
            yourself);
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
            at: #'id' put: #'invoices';
            at: #'label' put: 'Invoices';
            at: #'icon' put: #'wrench';
            at: #'accessRoleNames' put: #('clientTabInvoices');
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
            at: #'id' put: #'basics';
            at: #'label' put: 'Basics';
            at: #'icon' put: #'list';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself