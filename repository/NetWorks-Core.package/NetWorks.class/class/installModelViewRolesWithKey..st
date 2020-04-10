setup
installModelViewRolesWithKey: modelKey
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := self defaultEnvironmentClass
    getEnvironmentNamed: modelKey asString
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
  'projectTabDefects'.
  'featureAddProjects'.
  'featureDeleteProjects'.
  'exportProjects'.
  'exportForecast'.
  'exportDesign'.
  'exportDesignLogs'.
  'exportInsurances'.
  'exportContractorInvoices'.
  'Project Manager'.
  'Project Designer'.
  'Project Construction'.
  'Contractor'.
  'Field Supervisor'}
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName ]