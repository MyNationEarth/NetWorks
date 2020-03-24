utilities
fixContactBackReferences
  "Fix the back-references for Client and Contractor contacts"

  NetWorks datateks clients
    do: [ :client | client contacts do: [ :contact | contact client: client ] ].
  NetWorks datateks contractors
    do: [ :contractor | contractor contacts do: [ :contact | contact contractor: contractor ] ].
  NetWorks fiveSmiths clients
    do: [ :client | client contacts do: [ :contact | contact client: client ] ].
  NetWorks fiveSmiths contractors
    do: [ :contractor | contractor contacts do: [ :contact | contact contractor: contractor ] ]