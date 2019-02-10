descriptions
contactsDescription
  <magritteDescription>
  | template |
  template := NWClientContact new.
  ^ NWToManyRelationDescription new
    accessor: #'contacts';
    classes: {NWClientContact};
    reference:
        template titleDescription , template contactNumberDescription
            , template emailAddressDescription;
    label: 'Contacts';
    priority: 400;
    beSorted;
    yourself