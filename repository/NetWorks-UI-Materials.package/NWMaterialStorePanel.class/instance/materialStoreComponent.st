components
materialStoreComponent
  ^ self
    componentAt: #'materialStore'
    ifAbsentPut: [ 
      (self organisationModel materialStoresDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Material Warehouse';
                icon: self defaultIcon;
                yourself);
        yourself ]