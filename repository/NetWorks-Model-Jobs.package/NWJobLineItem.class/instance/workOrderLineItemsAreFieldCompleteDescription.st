Accessing
workOrderLineItemsAreFieldCompleteDescription
  | desc |
  ^ desc := MABooleanDescription new
    accessor: #'workOrderLineItemsAreFieldComplete';
    label: 'Field Complete';
    default: false;
    priority: 100;
    yourself