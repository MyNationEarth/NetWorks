as yet unclassified
importCSVString: csvString organisationModel: organisationModel
  ^ organisationModel useDuring: [ (self onData: csvString) import ]