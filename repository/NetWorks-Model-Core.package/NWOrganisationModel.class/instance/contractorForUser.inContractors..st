work order access
contractorForUser: bpmUser inContractors: candidateContractors
  candidateContractors
    do: [ :contractor | 
      (contractor hasContactForUser: bpmUser)
        ifTrue: [ ^ contractor ]
        ifFalse: [ self contractorForUser: bpmUser inContractors: contractor subContractors ] ].
  ^ nil