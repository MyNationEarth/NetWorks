magritte hooks
backReference: aContractor
  contractor := aContractor.	"Add default contant details"
  contractor
    ifNotNil: [ 
      contractor contacts
        ifNotEmpty: [ 
          | defaultContact |
          defaultContact := contractor contacts first.
          self contact title: defaultContact title.
          self contact contactNumber: defaultContact contactNumber.
          self contact emailAddress: defaultContact emailAddress ] ]