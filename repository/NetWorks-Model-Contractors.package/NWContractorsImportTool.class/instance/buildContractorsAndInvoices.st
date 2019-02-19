Importing
buildContractorsAndInvoices
  | contractors |
  contractors := (NetWorks instance organisationModels at: #'datateks.com.au')
    contractors.
  (rows copyFrom: 2 to: rows size)
    do: [ :row | 
      | contractor invoice |
      contractor := contractors
        detect: [ :c | c title = (row at: #'company') ]
        ifNone: [ 
          contractors
            add:
              (NWContractor new
                title: (row at: #'company');
                yourself) ].
      invoice := contractor invoices add: NWContractorInvoice new.
      row at: #'invoiceNumber' ifPresent: [ :value | invoice title: value ].
      row
        at: #'invoiceDate'
        ifPresent: [ :value | invoice issueDate: (self dateFromString: value) ].
      row
        at: #'paymentDate'
        ifPresent: [ :value | invoice paymentMadeDate: (self dateFromString: value) ].
      row
        at: #'value'
        ifPresent: [ :value | invoice amountPayable: (self numberFromString: value) ].
      row at: #'note' ifPresent: [ :value | invoice comment: value ].	"Additional Attributes used to associate with a job"
      row
        at: #'client'
        ifPresent: [ :value | invoice attributeAt: #'client' put: value ].
      row
        at: #'fsam'
        ifPresent: [ :value | invoice attributeAt: #'fsam' put: value ].
      row
        at: #'fda'
        ifPresent: [ :value | invoice attributeAt: #'fda' put: value ] ]