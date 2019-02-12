components
clientsComponent
  ^ self
    componentAt: #'clients'
    ifAbsentPut: [ 
      (self organisationModel clientsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Clients';
                icon: self defaultIcon;
                yourself);
        yourself ]