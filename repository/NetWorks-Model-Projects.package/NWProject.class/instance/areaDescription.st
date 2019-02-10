descriptions
areaDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'area';
    options: self areaLocationsList;
    label: 'Location / Area';
    priority: 1500;
    yourself.
  ^ description