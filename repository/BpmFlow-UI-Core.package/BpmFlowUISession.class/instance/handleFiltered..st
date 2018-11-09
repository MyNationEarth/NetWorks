handling
handleFiltered: aRequestContext
  (aRequestContext request url asString startsWith: '/BpmFlowUI')
    ifTrue: [ super handleFiltered: aRequestContext ]
    ifFalse: [ 
      (self model
        ifNotNil: [ :model | model organisationWithDnsName: aRequestContext request host ])
        useDuring: [ super handleFiltered: aRequestContext ] ]