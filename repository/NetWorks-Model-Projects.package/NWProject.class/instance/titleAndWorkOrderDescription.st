descriptions
titleAndWorkOrderDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor: #'titleAndWorkOrder';
    label: 'Project Title';
    priority: 100;
    beReadonly;
    beRequired;
    yourself