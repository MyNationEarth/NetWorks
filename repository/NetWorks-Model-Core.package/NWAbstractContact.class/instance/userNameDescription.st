descriptions
userNameDescription
  <magritteDescription>
  | desc |
  desc := MAStringDescription new
    accessor: #'userName';
    label: 'User Name';
    priority: 10;
    componentClass: TBSMagritteTextInputComponent;
    yourself.
  ^ desc