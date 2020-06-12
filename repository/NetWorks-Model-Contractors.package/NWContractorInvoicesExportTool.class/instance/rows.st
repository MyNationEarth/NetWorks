export file
rows
  | rows |
  rows := OrderedCollection new.
  self organisationModel contractors
    do: [ :contractor | contractor invoices ifNotEmpty: [ :invoices | rows addAll: invoices ] ].
  ^ rows