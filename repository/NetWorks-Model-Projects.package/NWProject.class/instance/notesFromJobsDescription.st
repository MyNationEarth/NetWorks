descriptions
notesFromJobsDescription
  <magritteDescription>
  | template |
  template := NWNote new.
  ^ NWToManyRelationDescription new
    accessor: #'notesFromJobs';
    classes: {NWNote};
    reference:
        template titleDescription , template commentDescription
            , template referencedObjectTitleDescription
            , template userNameDescription , template dateAndTimeDescription;
    label: 'Job Notes';
    priority: 400;
    beReadonly;
    beSorted;
    yourself