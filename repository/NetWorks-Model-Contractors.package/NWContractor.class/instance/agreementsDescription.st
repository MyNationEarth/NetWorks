descriptions
agreementsDescription
  <magritteDescription>
  | template |
  template := NWContractorAgreement new.
  ^ NWToManyRelationDescription new
    accessor: #'agreements';
    classes: {NWContractorAgreement};
    reference: template titleDescription , template expiryDateDescription;
    label: 'Agreements';
    priority: 400;
    beSorted;
    yourself