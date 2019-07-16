descriptions
designTimeLogsDescription
  <magritteDescription>
  | template |
  template := NWDesignTimeLog new.
  ^ NWToManyRelationDescription new
    accessor: #'designTimeLogs';
    classes: {NWDesignTimeLog};
    reference:
        template titleDescription , template userDescription , template hoursDescription;
    label: 'Design Time Logs';
    priority: 400;
    yourself