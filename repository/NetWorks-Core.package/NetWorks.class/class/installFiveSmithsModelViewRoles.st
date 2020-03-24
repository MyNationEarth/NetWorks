5smiths
installFiveSmithsModelViewRoles
  | application env |
  "Create Roles in each application and add all roles to all users"
  env := NetWorks fiveSmiths bpmEnvironment.
  application := BpmApplication
    getExistingApplicationOrCreateNewNamed: 'modelViewApplicaton'.	"env registerApplication: application."
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
  'Contractor Invoices'.
  'Jobs Access'.
  'Client'.
  'Contractor'}
    do: [ :rolePrefix | 
      | role |
      role := self defaultFrontOfficeRoleClass
        createNewOrGetExisting: rolePrefix
        in: application applicationName ]