descriptions
clientTitleDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor:
        (MAChainAccessor
            accessors:
              #(#'workOrder' #'job' #'project' #'contract' #'client' #'title'));
    label: 'Client';
    reportColumnClass: NWDescribedColumn;
    priority: 300;
    beRequired;
    beReadonly;
    yourself