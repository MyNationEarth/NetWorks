descriptions
userDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'user';
    options:
        (BpmUser getFrontofficeUsers
            select: [ :user | user includesRoleNamed: 'Project Design' ]);
    reference:
        (MAStringDescription new
            selectorAccessor: #'displayName';
            yourself) asContainer;
    label: 'Designer';
    priority: 100;
    beRequired;
    beSorted;
    yourself.
  ^ description