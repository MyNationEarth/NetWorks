descriptions
bpmApplicationDescription
  <magritteDescription>
  | description |
  description := MASingleOptionDescription new
    accessor: #'bpmApplication';
    options: OrbeonApplication getOrbeonCache values;
    reference:
        (MAStringDescription new
            accessor: #'applicationName';
            label: 'Application Name';
            priority: 100;
            yourself) asContainer;
    label: 'BPM Application';
    priority: 300;
    yourself.
  ^ description