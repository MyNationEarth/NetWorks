descriptions
materialStoresDescription
  <magritteDescription>
  | template |
  template := NWMaterialStore new.
  ^ NWToManyRelationDescription new
    accessor: #'materialStores';
    classes: {NWMaterialStore};
    reference: template titleDescription , template commentDescription;
    label: 'Materials Warehouse';
    priority: 100;
    beSorted;
    yourself