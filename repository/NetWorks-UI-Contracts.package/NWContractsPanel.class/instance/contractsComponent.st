components
contractsComponent
  ^ self
    componentAt: #'contracts'
    ifAbsentPut: [ 
      (self organisationModel contractsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Contracts';
                icon: self defaultIcon;
                yourself);
        yourself ]