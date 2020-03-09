descriptions
contractorDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'contractor';
    options: self organisationModel contractors;
    reference: NWContractor new titleDescription asContainer;
    label: 'Contractor';
    comment: 'Select a contractor';
    priority: 300;
    beRequired;
    yourself.	"NOTE: contractors used to be tied to clients and job types... select: [ :contractor | 
              (contractor jobTypes includes: job jobType)
                and: [ contractor clients includes: job project client ] ]"	"self user isAdmin
    ifFalse: [ description beReadonly ]."
  self percentageComplete > 0
    ifTrue: [ description beReadonly ].
  ^ description