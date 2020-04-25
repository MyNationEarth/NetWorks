components
workOrdersComponent
  ^ self
    componentAt: #'workOrders'
    ifAbsentPut: [ 
      (self organisationModel myWorkOrdersDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Work Orders';
                icon: self defaultIcon;
                yourself);
        yourself ]