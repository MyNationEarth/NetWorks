widgets
loginWidget
  ^ self components
    at: #'loginWidget'
    ifAbsentPut: [ 
      AdminLTELoginWidget new
        validator: self;
        yourself ]