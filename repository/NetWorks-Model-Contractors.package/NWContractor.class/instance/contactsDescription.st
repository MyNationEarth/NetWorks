descriptions
contactsDescription
  <magritteDescription>
  | template |
  template := NWContractorContact new.
  ^ NWToManyRelationDescription new
    accessor: #'contacts';
    classes: {NWContractorContact};
    reference:
        template titleDescription , template contactNumberDescription
            , template emailAddressDescription;
    label: 'Contacts';
    priority: 400;
    beSorted;
    yourself