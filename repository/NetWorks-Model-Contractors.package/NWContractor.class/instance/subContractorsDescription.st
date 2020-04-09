descriptions
subContractorsDescription
  <magritteDescription>
  | template |
  template := NWContractor new.
  ^ NWToManyRelationDescription new
    accessor: #'subContractors';
    classes: {NWContractor};
    reference: template titleDescription , template commentDescription;
    label: 'Sub-Contractors';
    priority: 100;
    beSorted;
    yourself