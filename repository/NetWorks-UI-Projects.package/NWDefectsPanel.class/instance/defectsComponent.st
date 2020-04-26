components
defectsComponent
  ^ self
    componentAt: #'defects'
    ifAbsentPut: [ 
      (self organisationModel defectsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Quality';
                icon: self defaultIcon;
                yourself);
        yourself ]