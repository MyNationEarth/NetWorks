descriptions
policyNumberDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'policyNumber';
    label: 'Policy Number';
    priority: 100;
    beRequired;
    requiredErrorMessage: 'Please provide a Policy Number.';
    componentClass: TBSMagritteTextInputComponent;
    yourself