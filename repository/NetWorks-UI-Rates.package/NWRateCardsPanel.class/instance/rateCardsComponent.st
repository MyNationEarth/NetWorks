components
rateCardsComponent
  ^ self
    componentAt: #'rateCards'
    ifAbsentPut: [ 
      (self organisationModel rateCardsDescription asContainer
        componentRenderer: MACssRenderer;
        asComponentOn: self organisationModel)
        addForm: #();
        addDecoration:
            (AdminLTEBoxDecoration new
                label: 'Rate Cards';
                icon: self defaultIcon;
                yourself);
        yourself ]