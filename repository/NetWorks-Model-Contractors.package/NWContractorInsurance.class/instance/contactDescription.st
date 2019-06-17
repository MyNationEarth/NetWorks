descriptions
contactDescription
  <magritteDescription>
  | template |
  template := NWContractorContact new.
  ^ MAToOneRelationDescription new
    accessor: #'contact';
    label: 'Contact';
    classes: {NWContractorContact};
    componentClass: MAInternalEditorComponent;
    reference:
        template titleDescription , template contactNumberDescription
            , template emailAddressDescription;
    yourself