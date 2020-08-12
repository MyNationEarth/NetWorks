components
incidentReportsComponent
  ^ self
    componentAt: #'incidentReports'
    ifAbsentPut: [ 
      (self organisationModel incidentReportsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Incident Reports';
                icon: self defaultIcon;
                yourself);
        yourself ]