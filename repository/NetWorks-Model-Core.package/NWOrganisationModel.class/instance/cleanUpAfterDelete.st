magritte-hooks
cleanUpAfterDelete
  "Clean up the BpmEnvironment"

  bpmEnvironment users do: [ :user | bpmEnvironment unregisterUser: user ].
  bpmEnvironment applications
    do: [ :app | 
      "Remove all roles from the application"
      app getAllRoles
        do: [ :role | 
          (role isKindOf: BpmBackOfficeRole)
            ifTrue: [ app removeBackOfficeRole: role ifAbsent: [  ] ]
            ifFalse: [ app removeFrontOfficeRole: role ] ].
      bpmEnvironment unregisterApplicationAndRemove: app ifNone: [  ] ].
  bpmEnvironment removeFromCache