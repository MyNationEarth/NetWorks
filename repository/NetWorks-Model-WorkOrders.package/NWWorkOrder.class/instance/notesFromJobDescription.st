descriptions
notesFromJobDescription
  <magritteDescription>
  | template |
  template := NWNote new.
  ^ NWToManyRelationDescription new
    accessor: #'notesFromJob';
    classes: {NWNote};
    reference:
        template titleDescription , template commentDescription
            , template referencedObjectTitleDescription
            , template userNameDescription , template dateAndTimeDescription;
    label: 'Job Notes';
    priority: 400;
    beDefinitive;
    beSorted;
    beReadonly;
    yourself