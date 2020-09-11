descriptions
isFieldCompleteDescription
  ^ MABooleanDescription new
    accessor: #'isFieldComplete';
    label: 'Field Complete';
    trueString: 'Yes';
    falseString: '';
    isReadonly;
    priority: 100;
    yourself