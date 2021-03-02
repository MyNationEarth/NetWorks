descriptions
approvedByDisplayNameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'approvedByDisplayName';
    label: 'Approved By';
    priority: 100;
    beReadonly;
    propertyAt: #'icon' put: #'user';
    yourself