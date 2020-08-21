magritte-hooks
addButtonsToForm: formDecoration
  formDecoration addButton: #'fieldCompleteAllLineItmes' label: 'Field Complete'.	"addButton: #'quantityCompleteAllLineItmes' label: 'Quantities Complete';"
  (self userHasRoleNamed: 'projectTabJobs')
    ifTrue: [ 
      formDecoration
        addButton: #'approveFieldCompleteAllLineItmes'
        label: 'Approve Field Complete' ]