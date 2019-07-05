descriptions
userDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'user';
    options:
        (BpmUser getFrontofficeUsers
            select: [ :user | user rolesIn: self organisationModel bpmApplication ]);
    reference:
        (MAStringDescription new
            selectorAccessor: #'userName';
            yourself) asContainer;
    label: 'Contractor';
    priority: 100;
    beRequired;
    beSorted;
    yourself.
  ^ description