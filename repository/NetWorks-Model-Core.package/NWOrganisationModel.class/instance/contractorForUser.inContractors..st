contractor access
contractorForUser: bpmUser inContractors: candidateContractors
  candidateContractors
    do: [ :contractor | 
      (contractor hasContactForUser: bpmUser)
        ifTrue: [ ^ contractor ] ].
  ^ nil