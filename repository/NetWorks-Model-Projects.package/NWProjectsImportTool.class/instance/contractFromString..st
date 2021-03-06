conversion
contractFromString: contractString
  "Answer the contract relating to this string"

  | contracts |
  contracts := (NetWorks instance organisationModels at: #'5smiths.com.au')
    contracts.
  ^ contracts
    detect: [ :contract | contract title = contractString ]
    ifNone: [ 
      contracts
        add:
          (NWContract new
            title: contractString;
            yourself) ]