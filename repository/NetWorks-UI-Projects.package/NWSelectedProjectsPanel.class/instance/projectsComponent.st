components
projectsComponent
  ^ self
    componentAt: #'projects'
    ifAbsentPut: [ 
      ((self organisationModel projectsDescription
        accessor: #'selectedProjects';
        beDefinitive;
        yourself) asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: self defaultLabel;
                icon: self defaultIcon;
                yourself);
        yourself ]