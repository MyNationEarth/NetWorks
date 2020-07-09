magritte-hooks
addButtonsToForm: formDecoration
  formDecoration
    addButton: #'quantityCompleteAllLineItmes' label: 'Quantities Complete';
    addButton: #'fieldCompleteAllLineItmes' label: 'Field Complete'.
  (self userHasRoleNamed: 'projectTabJobs')
    ifTrue: [ 
      formDecoration
        addButton: #'approveFieldCompleteAllLineItmes'
        label: 'Approve Field Complete' ]