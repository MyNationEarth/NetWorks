private
respondFromAjaxRequestWith: anException continuation: continuation
  "Instead of doing '(self requestContext responseGenerator internalError: anException) respond' (the default code for AJAX errors) we write a JSON serilized dictionary of useful information as the response. This response text (JSON) is then parsed by the #ajaxErrorHandler to show the error info to the user in a popup. "

  | responseGenerator infoDict |
  responseGenerator := self requestContext responseGenerator.
  infoDict := Dictionary new.
  infoDict at: 'exceptionDescription' put: anException printString.
  infoDict at: 'dateAndTime' put: DateAndTime now printString.
  infoDict at: 'continuationOop' put: continuation asOop printString.
  infoDict
    at: 'packagesVersions'
    put:
      (self
        packagesInfoStringFrom:
          #('NetWorks-Core' 'NetWorks-Model-Clients' 'NetWorks-Model-Contractors' 'NetWorks-Model-Contracts' 'NetWorks-Model-Core' 'NetWorks-Model-Jobs' 'NetWorks-Model-Magritte' 'NetWorks-Model-Materials' 'NetWorks-Model-Projects' 'NetWorks-Model-Rates' 'NetWorks-Model-WorkOrders' 'NetWorks-UI-Announcements' 'NetWorks-UI-Clients' 'NetWorks-UI-Contractors' 'NetWorks-UI-Contracts' 'NetWorks-UI-Core' 'NetWorks-UI-Dashboard' 'NetWorks-UI-FileLibraries' 'NetWorks-UI-Jobs' 'NetWorks-UI-Magritte' 'NetWorks-UI-Materials' 'NetWorks-UI-Projects' 'NetWorks-UI-Rates' 'NetWorks-UI-WorkOrders')).
  infoDict at: 'sitePrefix' put: NWCurrentOrganisationModel value dnsName.
  infoDict at: 'user' put: self session user displayName.
  infoDict
    at: 'gemPid'
    put:
      ((self sessionDescriptionDictionaryForSessionId: System session) at: #'gemPid')
        asString.
  infoDict
    at: 'gemSessionID'
    put:
      ((self sessionDescriptionDictionaryForSessionId: System session)
        at: #'sessionId') asString.
  responseGenerator makePlainTextAndPerform: #'internalError'.
  responseGenerator response nextPutAll: infoDict asJson.
  responseGenerator respond	"code does not reach here after the respond"