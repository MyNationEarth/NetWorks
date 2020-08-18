descriptions
incidentReportsDescription
  <magritteDescription>
  | template |
  template := NWIncidentReport new.
  ^ NWToManyRelationDescription new
    accessor: #'incidentReports';
    classes: {NWIncidentReport};
    reference:
        template titleDescription , template locationDescription
            , template dateAndTimeDescription;
    label: 'Incident Reports';
    priority: 100;
    beSorted;
    yourself