magritte hooks
cleanUpAfterDelete
  super cleanUpAfterDelete.	"Add deleted project to the deletedProjects collection"
  self organisationModel deletedProjects add: self.
  self deletedByUser: WACurrentRequestContext value session user