descriptions
userDescription
  <magritteDescription>
  | description roles |
  roles := NetWorks
    rolesNamed: #('Project Construction' 'Project Designer')
    in: self modelViewApplication.
  description := MASingleOptionDescription new
    accessor: #'user';
    options:
        ((BpmUser getFrontofficeUsersIn: self organisationModel bpmEnvironment)
            select: [ :user | user includesAnyRoleOf: roles in: self modelViewApplication ]);
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