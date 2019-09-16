private
validatedFormOn: result forOperation: aString
  | com dec box |
  dec := NWMagritteFormDecoration new
    addButton: #'save' label: 'Save & Close';
    addButton: #'saveAndRemainOpen' label: 'Save';
    addButton: #'cancel';
    yourself.
  com := result asComponent
    addDecoration: dec;
    yourself.
  description
    propertyAt: #'objectDecorationClasses'
    ifPresent: [ :decorationClasses | 
      decorationClasses
        do: [ :decorationClass | 
          self
            addDecorationClass: decorationClass
            component: com
            object: result
            label: aString ] ].
  (com respondsTo: #'addButtonsToForm:')
    ifTrue: [ com addButtonsToForm: dec ].
  ^ com