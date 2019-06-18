descriptions
titleDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'title';
    label: 'Material ID';
    priority: 100;
    beRequired;
    requiredErrorMessage: 'Please provide a material ID.';
    componentClass: TBSMagritteTextInputComponent;
    yourself