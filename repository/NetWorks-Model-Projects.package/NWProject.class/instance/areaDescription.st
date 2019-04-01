descriptions
areaDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'area';
    options: self organisationModel allProjectAreas;
    label: 'Location / Area';
    priority: 1500;
    yourself.
  ^ description