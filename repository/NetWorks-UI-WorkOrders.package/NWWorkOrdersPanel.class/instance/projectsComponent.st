components
projectsComponent
  ^ self
    componentAt: #'projects'
    ifAbsentPut: [ 
      (self organisationModel projectsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Projects';
                icon: self defaultIcon;
                yourself);
        yourself ]