descriptions
xeroNextInvoiceNumberDescription
  <magritteDescription>
  ^ MANumberDescription new
    accessor: #'xeroNextInvoiceNumber';
    label: 'Next Invoice Number';
    comment:
        'This will be the next automatically generated invoice number used when exporting to Xero';
    priority: 100;
    componentClass: TBSMagritteTextInputComponent;
    yourself