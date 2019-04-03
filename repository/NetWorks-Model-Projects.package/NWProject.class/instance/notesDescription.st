descriptions
notesDescription
  <magritteDescription>
  | template |
  template := NWNote new.
  ^ NWToManyRelationDescription new
    accessor: #'notes';
    classes: {NWNote};
    reference:
        template titleDescription , template commentDescription
            , template dateAndTimeDescription;
    label: 'Notes';
    priority: 400;
    beSorted;
    yourself