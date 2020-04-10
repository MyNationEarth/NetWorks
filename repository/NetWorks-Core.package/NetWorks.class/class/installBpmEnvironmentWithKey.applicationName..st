setup
installBpmEnvironmentWithKey: modelKey applicationName: applicationName
  "The receiver create the minimal objects to allow the BPM System to start:
	1- Create a default Environment <BpmEnvironment>.
	2- Create an 'admins' Application <BpmApplication>.
	3- Create an 'admin' User <BpmUser>.
	4- Register the Application and the User in the default Environment.
	5- Create an 'admin' Role <BpmBackofficeRole>.
	6- Grant 'admin' User with 'admin' Role."

  | defaultEnvironment adminUser application role |
  "self defaultEnvironmentClass areUsersMultiEnvironment: false."
  defaultEnvironment := (self defaultEnvironmentClass
    newNamed: modelKey asString) addToCache.
  defaultEnvironment addDefaultCalendar.
  defaultEnvironment
    setFrontofficeApplicationName: applicationName;
    setBackofficeApplicationName: applicationName , ' Backoffice';
    setBIApplicationName: applicationName , 'BI'.
  (self instance organisationModels at: modelKey)
    bpmEnvironment: defaultEnvironment.
  self defaultBpmApplicationClass initializeCache.
  application := (BpmApplication newNamed: 'backOfficeAdmin') addToCache.
  adminUser := self defaultBpmUserClass addAdminUser.
  defaultEnvironment
    registerApplication: application;
    registerUser: adminUser.
  role := self defaultBackOfficeRoleClass
    createNewOrGetExisting: 'backOfficeAdmin'
    in: 'backOfficeAdmin'.
  role isAdmin: true.
  role grantUser: adminUser