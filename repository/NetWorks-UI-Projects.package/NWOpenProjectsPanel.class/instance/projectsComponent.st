components
projectsComponent
  ^ self
    componentAt: #'projects'
    ifAbsentPut: [ 
      ((self organisationModel projectsDescription
        accessor: #'projects';
        beDefinitive;
        yourself) asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Open Projects';
                icon: self defaultIcon;
                yourself);
        yourself ]