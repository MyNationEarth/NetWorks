Importing
contractMappings
  | contracts contractA417 contractA401 contractNBN |
  contracts := (NetWorks instance organisationModels at: #'datateks.com.au')
    contracts.
  contractA417 := contracts detect: [ :c | c title = 'A417 New Devs' ].
  contractA401 := contracts detect: [ :c | c title = 'A401 Request for Quote' ].
  contractNBN := contracts detect: [ :c | c title = 'NBN Assurance' ]