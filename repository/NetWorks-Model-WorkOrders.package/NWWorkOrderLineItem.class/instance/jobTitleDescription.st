descriptions
jobTitleDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor: (MAChainAccessor accessors: #(#'workOrder' #'job' #'title'));
    label: 'Job';
    priority: 300;
    reportColumnClass: NWDescribedColumn;
    beRequired;
    beReadonly;
    yourself