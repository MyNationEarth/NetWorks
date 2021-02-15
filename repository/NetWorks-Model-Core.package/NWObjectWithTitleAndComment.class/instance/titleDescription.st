descriptions
titleDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'title';
    label: 'Title';
    priority: 100;
    beRequired;
    requiredErrorMessage: 'Please provide a title.';
    componentClass: TBSMagritteTextInputComponent;
    addCondition: [ :titleString | self isTitleUnique: titleString ]
      labelled:
        'There is already an item with the title you entered. This will not be saved.';
    yourself