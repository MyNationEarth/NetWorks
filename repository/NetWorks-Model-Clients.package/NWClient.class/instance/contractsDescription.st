descriptions
contractsDescription
  <magritteDescription>
  | template |
  template := NWContract new.
  ^ NWToManyRelationDescription new
    accessor: #'contracts';
    classes: {NWContract};
    reference: template titleDescription , template commentDescription;
    label: 'Contracts';
    priority: 400;
    beSorted;
    yourself