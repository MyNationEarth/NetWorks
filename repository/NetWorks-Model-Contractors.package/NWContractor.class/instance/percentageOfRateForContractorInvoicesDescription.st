descriptions
percentageOfRateForContractorInvoicesDescription
  <magritteDescription>
  ^ MANumberDescription new
    accessor: #'percentageOfRateForContractorInvoices';
    label: 'Percentage of Rate for Contractor Invoices';
    comment:
        'This percentage will be applied to rate card unit values when generating invoice exports to Xero';
    priority: 100;
    componentClass: TBSMagritteTextInputComponent;
    yourself