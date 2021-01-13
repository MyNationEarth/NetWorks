descriptions-attributes
changeLogDescription
  | template |
  template := NWChangeLog new.
  ^ NWToManyRelationDescription new
    accessor: #'changeLog';
    classes: {NWChangeLog};
    reference: template timeAndDateDescription , template userDescription;
    propertyAt: #'objectDecorationClasses' put: {AdminLTEBoxDecoration};
    label: 'Change Log';
    priority: 500;
    yourself