descriptions
canLoginDescription
  <magritteDescription>
  | desc |
  desc := MABooleanDescription new
    accessor: #'canLogin';
    label: 'Enable Login';
    priority: 5000;
    falseString: '';
    yourself.
  self userName
    ifNil: [ 
      desc
        beReadonly;
        comment:
            'Enter a valid user name then "Save & Close" the contact to enable this access checkbox.' ].
  ^ desc