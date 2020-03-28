backup / restore
restoreFromBackup: backupName
  | restoredOrganisationModel |
  "Restore the entire model from a disc backup"
  restoredOrganisationModel := (NWBackupRestoreUtility
    restoreBackupNamed: backupName) object.
  NWBackupRestoreUtility
    reconnectBpmFlowObjectsFromOrganisationModel: restoredOrganisationModel
    toEnvironment: self bpmEnvironment