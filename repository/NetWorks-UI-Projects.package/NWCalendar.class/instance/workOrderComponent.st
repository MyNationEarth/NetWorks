accessing
workOrderComponent
  ^ self components at: #'workOrder' ifAbsent: [ nil ]