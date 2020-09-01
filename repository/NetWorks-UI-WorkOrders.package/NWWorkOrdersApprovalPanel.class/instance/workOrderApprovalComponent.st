components
workOrderApprovalComponent
  ^ self
    componentAt: #'workOrders'
    ifAbsentPut: [ 
      (self organisationModel workOrderApprovalsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Work Orders';
                icon: self defaultIcon;
                yourself);
        yourself ]