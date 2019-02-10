descriptions
clientsDescription
  <magritteDescription>
  | template |
  template := NWClient new.
  ^ NWToManyRelationDescription new
    accessor: #'clients';
    classes: {NWClient};
    reference:
        template titleDescription , template commentDescription
            , template mainContactNumberDescription;
    label: 'Clients';
    priority: 100;
    beSorted;
    yourself