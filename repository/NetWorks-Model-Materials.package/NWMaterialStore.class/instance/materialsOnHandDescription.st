descriptions
materialsOnHandDescription
  <magritteDescription>
  | template |
  template := NWMaterialOnHand new.
  ^ NWToManyRelationDescription new
    accessor: #'materialsOnHand';
    classes: {NWMaterialOnHand};
    reference:
        template materialTitleAndCommentDescription , template quantityDescription
            , template faultyQuantityDescription;
    label: 'Materials on Hand';
    priority: 400;
    beSorted;
    yourself