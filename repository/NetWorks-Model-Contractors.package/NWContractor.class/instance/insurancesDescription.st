descriptions
insurancesDescription
  <magritteDescription>
  | template |
  template := NWContractorInsurance new.
  ^ NWToManyRelationDescription new
    accessor: #'insurances';
    classes: {NWContractorInsurance};
    reference: template titleDescription , template expiryDateDescription;
    label: 'Insurances';
    priority: 400;
    beSorted;
    yourself