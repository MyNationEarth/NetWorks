export file
rows
  | rows |
  rows := OrderedCollection new.
  (NetWorks instance organisationModels at: #'datateks.com.au') contractors
    do: [ :contractor | contractor insurances ifNotEmpty: [ :insurances | rows addAll: insurances ] ].
  ^ rows