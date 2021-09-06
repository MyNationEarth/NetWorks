descriptions
ecmNameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'ecmName';
    label: 'ECM Name';
    comment:
        'This is the name of the Folder where files will be stored. Must start with a character, not a number, and have no spaces or special characters.';
    priority: 100;
    beRequired;
    componentClass: TBSMagritteTextInputComponent;
    yourself