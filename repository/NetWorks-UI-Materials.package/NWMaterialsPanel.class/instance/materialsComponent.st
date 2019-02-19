components
materialsComponent
  ^ self
    componentAt: #'materials'
    ifAbsentPut: [ 
      (self organisationModel materialsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Materials';
                icon: self defaultIcon;
                yourself);
        yourself ]