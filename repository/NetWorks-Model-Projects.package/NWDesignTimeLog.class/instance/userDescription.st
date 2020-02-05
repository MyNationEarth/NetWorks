descriptions
userDescription
  <magritteDescription>
  | description roles |
  roles := NetWorks
    rolesNamed: #('Project Design')
    in: self modelViewApplication.
  description := MASingleOptionDescription new
    accessor: #'user';
    options:
        ((BpmUser getFrontofficeUsersIn: self modelViewApplication)
            select: [ :user | user includesAnyRoleOf: roles in: self organisationModel bpmEnvironment ]);
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