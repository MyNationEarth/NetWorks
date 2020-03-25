datateks
installFiveSmithsModelViewRoles
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := self defaultEnvironmentClass
    getEnvironmentNamed: '5smiths.com.au'
    ifNone: [  ].
  application := BpmApplication
    applicationNamed: 'modelViewApplication'
    ifNone: [  ].
  {'menuDashboard'.
  'menuProjects'.
  'menuOpenProjects'.
  'menuClients'.
  'menuContractors'.
  'menuContracts'.
  'menuRateCards'.
  'menuMaterials'.
  'menuWarehouse'.
  'menuPayroll'.
  'menuWorkOrders'.
  'projectTabProjectInfo'.
  'projectTabDesign'.
  'projectTabConstruction'.
  'projectTabJobs'.
  'projectTabAssignment'.
  'projectTabScheduling'.
  'projectTabNotes'.
  'projectTabFinancials'.
  'projectTabContractorInvoices'.
  'exportProjects'.
  'exportForecast'.
  'exportDesign'.
  'exportDesignLogs'.
  'exportInsurances'.
  'exportContractorInvoices'}
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName ]