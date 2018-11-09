forms
exportFormsOnPath: path
  OrbeonApplication getLastDefinitions
    do: [ :form | form class fileOutForm: form xmlString to: path , form formName , '.xml' ]