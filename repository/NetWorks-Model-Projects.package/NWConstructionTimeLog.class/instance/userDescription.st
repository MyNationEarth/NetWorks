descriptions
userDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'user';
    options:
        (BpmUser getFrontofficeUsers
            select: [ :user | user includesRoleNamed: 'Construction Staff' ]);
    reference:
        (MAStringDescription new
            selectorAccessor: #'displayName';
            yourself) asContainer;
    label: 'Construction Staff';
    priority: 100;
    beRequired;
    beSorted;
    yourself.
  ^ description