descriptions
materialsDescription
  <magritteDescription>
  | template |
  template := NWContractor new.
  ^ NWToManyRelationDescription new
    accessor: #'materials';
    classes: {NWMaterial};
    reference: template titleDescription , template commentDescription;
    label: 'Materials';
    priority: 100;
    beSorted;
    yourself