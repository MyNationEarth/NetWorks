descriptions
designTimeLogsDescription
  <magritteDescription>
  | template |
  template := NWDesignTimeLog new.
  ^ NWToManyRelationDescription new
    accessor: #'designTimeLogs';
    classes: {NWDesignTimeLog};
    reference:
        template titleDescription , template userDescription
            , template commentDescription , template hoursDescription
            , template dateDescription;
    label: 'Design Time Logs';
    priority: 400;
    yourself