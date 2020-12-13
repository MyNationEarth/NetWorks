descriptions
projectsDescription
  <magritteDescription>
  | template |
  template := NWProject new.
  ^ NWToManyRelationDescription new
    accessor: #'projects';
    classes: {NWProject};
    reference:
        template titleAndWorkOrderDescription , template marginPercentageDescription
            , template finalPaymentDescription , template efscdDateDescription
            , template projectEngineerDescription
            , template clientContactDescription , template statusDescription;
    label: 'Projects';
    priority: 100;
    beSorted;
    yourself