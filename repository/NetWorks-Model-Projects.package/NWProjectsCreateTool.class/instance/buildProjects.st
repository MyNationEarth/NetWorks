Importing
buildProjects
  | projects contract jobLineItemType rateCard |
  projects := NetWorks fiveSmiths projects.	"projects := OrderedCollection new."
  contract := NetWorks fiveSmiths contracts
    detect: [ :c | c title = 'Datateks - MWA' ].
  jobLineItemType := (rateCard := NetWorks fiveSmiths rateCards
    detect: [ :rc | rc title = 'Datateks - MWA Rate Card' ]) rateCategories
    first rates detect: [ :r | r title = 'FC-03-01-01' ].
  (rows copyFrom: 3 to: rows size)
    do: [ :row | 
      | title sam project address addressParts suburb job jobTitle jobLineItem |
      sam := (row at: #'SAM') trimBoth.
      title := sam , '-L0401'.
      address := (row at: #'Address') trimBoth.
      suburb := ((addressParts := address substrings: ',')
        at: addressParts size - 1) trimBoth.
      project := projects
        detect: [ :p | p title = title ]
        ifNone: [ 
          projects
            add:
              (NWProject new
                title: title;
                contract: contract;
                yourself) ].
      project
        sam: sam;
        suburb: suburb;
        projectEngineer: 'Craig Smith';
        area: 'NSW'.
      row
        at: #'Issued'
        ifPresent: [ :value | 
          | d |
          d := self dateFromString: value.
          project
            projectAwardedDate: d;
            efscdDate: d ].
      jobTitle := (row at: #'LOCID') trimBoth.
      job := project jobs
        detect: [ :j | j title = jobTitle ]
        ifNone: [ 
          project jobs
            add:
              (NWJob new
                title: jobTitle;
                yourself) ].
      job
        location: address;
        project: project;
        rateCard: rateCard.
      row at: #'Solution' ifPresent: [ :value | job comment: value ].
      jobLineItem := job lineItems
        detect: [ :jli | jli lineItemType = jobLineItemType ]
        ifNone: [ 
          job lineItems
            add:
              (NWJobLineItem new
                job: job;
                lineItemType: jobLineItemType;
                quantity: 1;
                yourself) ] ]