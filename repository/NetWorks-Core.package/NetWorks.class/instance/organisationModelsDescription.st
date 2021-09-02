descriptions
organisationModelsDescription
  | template |
  template := NWOrganisationModel new.
  ^ NWToManyRelationDescription new
    accessor: #'organisationModels';
    classes: {NWOrganisationModel};
    reference: template dnsNameDescription , template ecmNameDescription;
    label: 'Organisation Models';
    priority: 100;
    beSorted;
    yourself