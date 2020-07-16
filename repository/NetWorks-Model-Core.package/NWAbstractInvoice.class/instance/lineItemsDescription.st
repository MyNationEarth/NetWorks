descriptions
lineItemsDescription
  <magritteDescription>
  | template |
  template := NWInvoiceLineItem new.
  ^ NWToManyRelationDescription new
    accessor: #'lineItems';
    classes: {NWInvoiceLineItem};
    reference:
        template lineItemTypeTitleAndCommentDescription , template quantityDescription
            , template unitDescription , template extendedDescription;
    propertyAt: #'objectDecorationClasses' put: {AdminLTEBoxDecoration};
    label: 'Line Items';
    priority: 500;
    yourself