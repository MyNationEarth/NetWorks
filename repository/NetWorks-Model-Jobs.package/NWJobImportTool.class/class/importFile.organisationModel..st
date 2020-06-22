as yet unclassified
importFile: filePath organisationModel: organisationModel
  | file |
  ^ organisationModel useDuring: [ (self onFileAtPath: filePath) import ]