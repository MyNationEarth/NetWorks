descriptions
raisedByDescription
  <magritteDescription>
  | description roles |
  roles := NetWorks
    rolesNamed: #('Project Manager' 'Project Designer' 'Quality Manager')
    in: self modelViewApplication.
  description := MASingleOptionDescription new
    accessor: #'raisedBy';
    options:
        ((BpmUser getFrontofficeUsersIn: self organisationModel bpmEnvironment)
            select: [ :user | user includesAnyRoleOf: roles in: self organisationModel bpmEnvironment ]);
    reference:
        (MAStringDescription new
            selectorAccessor: #'displayName';
            yourself) asContainer;
    label: 'Raised By';
    priority: 100;
    beSorted;
    yourself.
  ^ description