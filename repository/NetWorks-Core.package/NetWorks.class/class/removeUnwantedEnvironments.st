testing-removeEnv
removeUnwantedEnvironments
  ((OrderedCollection withAll: BpmEnvironment cache)
    select: [ :env | (#('admins' '5smiths.com.au') includes: env name) not ])
    do: [ :bpmEnvironment | 
      bpmEnvironment users do: [ :user | bpmEnvironment unregisterUser: user ].
      bpmEnvironment applications
        do: [ :app | 
          "Remove all roles from the application"
          app getAllRoles
            do: [ :role | 
              (role isKindOf: BpmBackOfficeRole)
                ifTrue: [ app removeBackOfficeRole: role ifAbsent: [  ] ]
                ifFalse: [ app removeFrontOfficeRole: role ifAbsent: [  ] ] ].
          bpmEnvironment unregisterApplicationAndRemove: app ifNone: [  ] ].
      bpmEnvironment removeFromCache ].
  ^ OrderedCollection withAll: BpmEnvironment cache