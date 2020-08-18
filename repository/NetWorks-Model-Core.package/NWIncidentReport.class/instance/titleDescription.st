descriptions
titleDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'title';
    label: 'Brief Summary';
    priority: 100;
    beRequired;
    requiredErrorMessage: 'Please provide a brief summary for searching.';
    componentClass: TBSMagritteTextInputComponent;
    yourself