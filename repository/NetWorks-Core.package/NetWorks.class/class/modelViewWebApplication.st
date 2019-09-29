model viwer application
modelViewWebApplication
  ^ WACurrentRequestContext
    use: self createRequestContext
    during: [ BpmFlowUI new ]