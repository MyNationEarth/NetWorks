setup
install
  | application filter exceptionHandlerAttribute |
  application := WAAdmin register: BpmFlowUI asApplicationAt: 'BpmFlowUI'.
  application preferenceAt: #'sessionClass' put: BpmFlowUISession.
  filter := WAExceptionFilter new.
  exceptionHandlerAttribute := filter configuration
    attributeAt: #'exceptionHandler'.
  filter configuration
    takeValue: NWProductionWalkbackErrorHandler
    forAttribute: exceptionHandlerAttribute.	"application addFilter: filter."
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
    addLibrary: NWTBSDevelopmentLibrary;
    addLibrary: ElFinderFileLibrary