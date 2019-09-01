rendering
renderAdminContentOn: canvas
  canvas heading
    level4;
    with: 'Hourly Rates'.
  canvas
    form: [ 
      self payrollUsers
        do: [ :user | 
          canvas
            paragraph: [ 
              canvas textInput
                callback: [ :value | user payRate: (self numberFromString: value) ];
                with: user payRate.
              canvas
                space;
                text: user displayName ] ].
      canvas submitButton with: 'Save Rates' ]