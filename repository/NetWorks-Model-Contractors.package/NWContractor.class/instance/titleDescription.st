descriptions
titleDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'title';
    label: 'Contractor Name';
    propertyAt: #'icon' put: #'user';
    priority: 100;
    beRequired;
    componentClass: TBSMagritteTextInputComponent;
    yourself