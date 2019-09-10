descriptions
constructionTimeLogsDescription
  <magritteDescription>
  | template |
  template := NWConstructionTimeLog new.
  ^ NWToManyRelationDescription new
    accessor: #'constructionTimeLogs';
    classes: {NWConstructionTimeLog};
    reference:
        template titleDescription , template userDescription
            , template commentDescription , template hoursDescription
            , template dateDescription;
    label: 'Construction Time Logs';
    priority: 400;
    yourself