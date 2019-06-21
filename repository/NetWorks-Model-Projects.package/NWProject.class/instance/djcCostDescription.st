descriptions
djcCostDescription
  <magritteDescription>
  ^ MANumberDescription new
    accessor: #'djcCost';
    label: 'DJC Cost';
    priority: 3000;
    readonly: self contractorInvoices notEmpty;
    yourself