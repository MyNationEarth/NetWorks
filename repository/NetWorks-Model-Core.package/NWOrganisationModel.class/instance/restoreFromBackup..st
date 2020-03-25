backup / restore
restoreFromBackup: backupName
  "Restore the entire model from a disc backup"

  ^ (NWBackupRestoreUtility restoreBackupNamed: backupName) object