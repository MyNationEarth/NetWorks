descriptions
cspoLineItemsDescription
  <magritteDescription>
  | template |
  template := NWProjectLineItem new.
  ^ NWToManyRelationDescription new
    accessor: #'cspoLineItems';
    classes: {NWProjectLineItem};
    reference:
        template rateTitleDescription , template cspoValueDescription
            , template designQuantityDescription;
    label: 'CSPO Line Items';
    priority: 400;
    beSorted;
    yourself