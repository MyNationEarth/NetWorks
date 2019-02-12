components
contractorsComponent
  ^ self
    componentAt: #'contractors'
    ifAbsentPut: [ 
      (self organisationModel contractorsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Contractors';
                icon: self defaultIcon;
                yourself);
        yourself ]