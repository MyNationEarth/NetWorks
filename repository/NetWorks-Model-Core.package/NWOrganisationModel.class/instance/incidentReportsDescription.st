descriptions
incidentReportsDescription
  <magritteDescription>
  | template |
  template := NWIncidentReport new.
  ^ NWToManyRelationDescription new
    accessor: #'incidentReports';
    classes: {NWIncidentReport};
    reference:
        template titleDescription , template commentDescription
            , template isCriticalDescription , template dateAndTimeDescription;
    label: 'Incident Reports';
    priority: 100;
    beSorted;
    yourself