descriptions
titleAndWorkOrderDescription
  "<magritteDescription>"

  ^ MAStringDescription new
    accessor: #'titleAndWorkOrder';
    label: 'Work Order & Title';
    priority: 100;
    beReadonly;
    beRequired;
    yourself