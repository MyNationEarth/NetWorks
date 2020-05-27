setup
install
  | application |
  application := WAAdmin register: BpmFlowUI asApplicationAt: 'BpmFlowUI'.
  application preferenceAt: #'sessionClass' put: BpmFlowUISession.
  application
    addLibrary: JQDevelopmentLibrary;
    addLibrary: JQUiDevelopmentLibrary;
    addLibrary: JQOvercastTheme;
    addLibrary: TBSJasnyDevelopmentLibrary;
    addLibrary: FAWDevelopmentLibrary;
    addLibrary: JQSlimScrollLibrary;
    addLibrary: AdminLTEFileLibrary;
    addLibrary: Highcharts6DeploymentMetadataLibrary;
    addLibrary: JQFullCalendarFileLibrary;
    addLibrary: BpmFlowUIFileLibrary;
    addLibrary: NWTBSDevelopmentLibrary