Accessing
userContacts
  ^ contractors
    inject: OrderedCollection new
    into: [ :users :contractor | 
      users
        addAll:
            ((contractor contacts select: [ :contact | contact bpmUser notNil ])
                collect: [ :contact | contact ]);
        yourself ]