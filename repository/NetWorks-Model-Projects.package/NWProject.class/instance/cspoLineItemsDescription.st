descriptions
cspoLineItemsDescription
  <magritteDescription>
  | template |
  template := NWProjectLineItem new.
  ^ NWToManyRelationDescription new
    accessor: #'cspoLineItems';
    classes: {NWProjectLineItem};
    reference:
        template rateTitleDescription , template extendedValueDescription
            , template quantityDescription;
    label: 'CSPO Line Items';
    priority: 400;
    beSorted;
    yourself