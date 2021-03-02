descriptions
invoiceTitleDescription
  <magritteDescription>
  | desc |
  desc := MAStringDescription new
    accessor: #'invoiceTitle';
    label: 'Invoice';
    priority: 200;
    beReadonly;
    yourself.
  ^ desc