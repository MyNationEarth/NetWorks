export file
rows
  | rows |
  rows := OrderedCollection new.
  (NetWorks instance organisationModels at: #'datateks.com.au') contractors
    do: [ :contractor | contractor invoices ifNotEmpty: [ :invoices | rows addAll: invoices ] ].
  ^ rows