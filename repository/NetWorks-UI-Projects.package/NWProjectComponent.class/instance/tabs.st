accessing
tabs
  ^ OrderedCollection new
    add:
        (Dictionary new
            at: #'id' put: #'contractorInvoices';
            at: #'label' put: 'Contractor Invoices';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put:
                #('Project Administrator' 'Project Manager' 'Contractor Invoices');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'contractorInvoices') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'financials';
            at: #'label' put: 'Financials';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put: #('Project Administrator' 'Project Manager');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'financials') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'notes';
            at: #'label' put: 'Notes';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put: #('Project Administrator' 'Project Manager');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'notes') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'scheduling';
            at: #'label' put: 'Scheduling';
            at: #'icon' put: #'calendar';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'scheduling') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'assignment';
            at: #'label' put: 'Assignment';
            at: #'icon' put: #'user';
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'assignment') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'jobs';
            at: #'label' put: 'Jobs';
            at: #'icon' put: #'wrench';
            at: #'accessRoleNames' put: #('Jobs Access');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'jobs') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'construction';
            at: #'label' put: 'Construction';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put:
                #('Project Administrator' 'Project Manager' 'Construction Staff');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'construction') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'design';
            at: #'label' put: 'Design';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put: #('Project Administrator' 'Project Manager' 'Project Design');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'design') ];
            yourself);
    add:
        (Dictionary new
            at: #'id' put: #'basics';
            at: #'label' put: 'Project Info';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put: #('Project Administrator' 'Project Manager' 'Design Manager');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'basics') ];
            yourself);
    yourself	"add:
        (Dictionary new
            at: #'id' put: #'templates';
            at: #'label' put: 'Submission Documents';
            at: #'icon' put: #'list';
            at: #'accessRoleNames'
              put: #('Project Administrator' 'Project Manager');
            at: #'callback'
              put: [ announcer announce: (NWTabSelected tab: #'templates') ];
            yourself);"