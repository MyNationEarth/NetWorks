components
projectsComponent
  ^ self
    componentAt: #'projects'
    ifAbsentPut: [ 
      ((self organisationModel projectsDescription
        accessor: #'closedProjects';
        beDefinitive;
        yourself) asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Closed Projects';
                icon: self defaultIcon;
                yourself);
        yourself ]