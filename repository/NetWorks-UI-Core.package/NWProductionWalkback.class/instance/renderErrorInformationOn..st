rendering
renderErrorInformationOn: html
  html break.
  exception
    ifNotNil: [ html text: 'Error description: ' , exception printString ].
  html break.
  continuationOop
    ifNotNil: [ html text: 'Error ID: ' , continuationOop asString ].
  html break.
  html text: 'Generated at: ' , DateAndTime now printString.
  html break.
  self session user
    ifNotNil: [ html text: 'By User: ' , self session user displayName ].
  html break.
  html text: 'Site url: ' , WACurrentRequestContext value request uri asString.
  html break.
  html
    text:
      'Packages: '
        ,
          (self
            packagesInfoStringFrom:
              #('NetWorks-Core' 'NetWorks-Model-Clients' 'NetWorks-Model-Contractors' 'NetWorks-Model-Contracts' 'NetWorks-Model-Core' 'NetWorks-Model-Jobs' 'NetWorks-Model-Magritte' 'NetWorks-Model-Materials' 'NetWorks-Model-Projects' 'NetWorks-Model-Rates' 'NetWorks-Model-WorkOrders' 'NetWorks-UI-Announcements' 'NetWorks-UI-Clients' 'NetWorks-UI-Contractors' 'NetWorks-UI-Contracts' 'NetWorks-UI-Core' 'NetWorks-UI-Dashboard' 'NetWorks-UI-FileLibraries' 'NetWorks-UI-Jobs' 'NetWorks-UI-Magritte' 'NetWorks-UI-Materials' 'NetWorks-UI-Projects' 'NetWorks-UI-Rates' 'NetWorks-UI-WorkOrders')).
  html break.
  html
    text:
      'Gem PID: '
        ,
          ((self sessionDescriptionDictionaryForSessionId: System session) at: #'gemPid')
            asString.
  html break.
  html
    text:
      'Gem Session ID: '
        ,
          ((self sessionDescriptionDictionaryForSessionId: System session)
            at: #'sessionId') asString