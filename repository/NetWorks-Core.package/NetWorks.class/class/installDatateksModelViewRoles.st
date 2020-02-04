datateks
installDatateksModelViewRoles
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := NetWorks datateks bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.	"env registerApplication: application"
  {'Project Administrator'.
  'Project Manager'.
  'Project Design'.
  'Design Manager'.
  'Construction Staff'.
  'Accounts'.
  'Payroll'.
  'Project Exporter'.
  'Design Exporter'.
  'Contractor Exporter'.
  'Contractor Invoices'}
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName ]