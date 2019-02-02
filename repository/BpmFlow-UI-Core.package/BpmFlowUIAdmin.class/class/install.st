setup
install
  | application |
  application := WAAdmin register: BpmFlowUI asApplicationAt: 'BpmFlowUI'.
  application preferenceAt: #'sessionClass' put: BpmFlowUISession.
  application
    addLibrary: JQDevelopmentLibrary;
    addLibrary: TBSDevelopmentLibrary;
    addLibrary: TBSJasnyDevelopmentLibrary;
    addLibrary: FAWDevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary;
    addLibrary: AdminLTEFileLibrary