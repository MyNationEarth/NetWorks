descriptions
accreditationsDescription
  <magritteDescription>
  | template |
  template := NWAccreditation new.
  ^ NWToManyRelationDescription new
    accessor: #'accreditations';
    classes: {NWAccreditation};
    reference: template titleDescription , template expiryDateDescription;
    label: 'Accreditations';
    priority: 400;
    beSorted;
    yourself