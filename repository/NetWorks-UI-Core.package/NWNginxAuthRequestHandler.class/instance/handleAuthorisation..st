as yet unclassified
handleAuthorisation: aRequestContext
  | result |
  result := self verifyRequest: aRequestContext.
  (ObjectLogEntry
    info:
      'Auth for ' , NWCurrentOrganisationModel value dnsName asString , ' result: '
        , result asString
    object: aRequestContext request headers) addToLog.
  result
    ifTrue: [ aRequestContext responseGenerator respond ]
    ifFalse: [ aRequestContext responseGenerator forbidden ]