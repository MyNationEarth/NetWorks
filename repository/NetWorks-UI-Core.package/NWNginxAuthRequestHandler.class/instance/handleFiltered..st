as yet unclassified
handleFiltered: aRequestContext
  [ 
  (NetWorks instance organisationWithDnsName: aRequestContext request host)
    useDuring: [ self handleAuthorisation: aRequestContext ] ]
    on: Error
    do: [ :ex | 
      (ObjectLogEntry
        info: 'Auth Error: ' , ex description asString
        object:
          {ex.
          (aRequestContext request headers)}) addToLog.	"aRequestContext responseGenerator forbidden"
      aRequestContext responseGenerator forbidden ]