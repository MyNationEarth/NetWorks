descriptions
internalStaffDescription
  <magritteDescription>
  | description roles |
  roles := NetWorks
    rolesNamed: #('Project Construction')
    in: self modelViewApplication.
  description := MASingleOptionDescription new
    accessor: #'internalStaff';
    options:
        ((BpmUser getFrontofficeUsersIn: self organisationModel bpmEnvironment)
            select: [ :user | user includesAnyRoleOf: roles in: self organisationModel bpmEnvironment ]);
    reference:
        (MAStringDescription new
            selectorAccessor: #'displayName';
            yourself) asContainer;
    label: 'Internal Staff';
    priority: 100;
    beSorted;
    yourself.
  ^ description