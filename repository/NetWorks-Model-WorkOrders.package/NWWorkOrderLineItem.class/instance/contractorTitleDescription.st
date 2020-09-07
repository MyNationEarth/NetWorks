descriptions
contractorTitleDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor:
        (MAChainAccessor accessors: #(#'workOrder' #'contractor' #'title'));
    label: 'Contractor';
    priority: 300;
    reportColumnClass: NWDescribedColumn;
    beRequired;
    beReadonly;
    yourself