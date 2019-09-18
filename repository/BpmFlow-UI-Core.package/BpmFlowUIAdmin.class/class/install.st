setup
install
  | application |
  application := WAAdmin register: BpmFlowUI asApplicationAt: 'BpmFlowUI'.
  application preferenceAt: #'sessionClass' put: BpmFlowUISession.
  application
    addLibrary: JQDevelopmentLibrary;
    addLibrary: NWTBSDevelopmentLibrary;
    addLibrary: JQUiDevelopmentLibrary;
    addLibrary: JQOvercastTheme;
    addLibrary: TBSJasnyDevelopmentLibrary;
    addLibrary: FAWDevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary;
    addLibrary: AdminLTEFileLibrary;
    addLibrary: Highcharts6DevelopmentMetadataLibrary