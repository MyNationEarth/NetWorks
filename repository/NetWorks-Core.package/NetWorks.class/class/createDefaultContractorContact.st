utilities
createDefaultContractorContact
  NetWorks fiveSmiths contractors
    do: [ :contractor | 
      contractor contacts
        ifEmpty: [ 
          contractor contacts
            add:
              (NWContractorContact new
                title: contractor title;
                emailAddress: '';
                yourself) ] ]