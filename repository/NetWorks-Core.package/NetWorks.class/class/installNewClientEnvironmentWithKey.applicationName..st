setupNewEnvironment
installNewClientEnvironmentWithKey: modelKey applicationName: clientName
  "The receiver create the minimal objects to allow the BPM System to start:
	1- Create a default Environment <BpmEnvironment>.
	2- Create an 'admins' Application <BpmApplication>.
	3- Create an 'admin' User <BpmUser>.
	4- Register the Application and the User in the default Environment.
	5- Create an 'admin' Role <BpmBackofficeRole>.
	6- Grant 'admin' User with 'admin' Role."

  | newEnvironment adminUser application role |
  "self defaultEnvironmentClass areUsersMultiEnvironment: false."
  newEnvironment := (self defaultEnvironmentClass newNamed: modelKey asString)
    addToCache.
  newEnvironment addDefaultCalendar.
  newEnvironment
    setFrontofficeApplicationName: clientName;
    setBackofficeApplicationName: clientName , ' Backoffice';
    setBIApplicationName: clientName , ' BI'.
  (self instance organisationWithDnsName: modelKey)
    bpmEnvironment: newEnvironment.
  application := (BpmApplication newNamed: clientName , '-admin') addToCache.
  adminUser := self defaultBpmUserClass
    getExistingOrNewUserNamed: clientName , '-admin'
    password: clientName , 'admin'.
  newEnvironment
    registerApplication: application;
    registerUser: adminUser.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: clientName , '-backOfficeAdminRole'
    in: clientName , '-admin'.
  role isAdmin: true.
  role grantUser: adminUser