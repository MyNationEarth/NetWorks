components
organisationModelsComponent
  ^ self
    componentAt: #'organisationModels'
    ifAbsentPut: [ 
      (NetWorks instance organisationModelsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: NetWorks instance)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Organisation Models';
                icon: self defaultIcon;
                yourself);
        yourself ]