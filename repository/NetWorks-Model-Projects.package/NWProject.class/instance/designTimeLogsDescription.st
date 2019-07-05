descriptions
designTimeLogsDescription
  <magritteDescription>
  | template |
  template := NWDesignTimeLog new.
  ^ NWToManyRelationDescription new
    accessor: #'designTimeLogs';
    classes: {NWContractorInvoice};
    reference: template userNameDescription , template hoursDescription;
    label: 'Design Time Logs';
    priority: 400;
    beSorted;
    yourself