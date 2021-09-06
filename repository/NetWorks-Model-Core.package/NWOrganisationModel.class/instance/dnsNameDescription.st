descriptions
dnsNameDescription
  <magritteDescription>
  ^ MAStringDescription new
    accessor: #'dnsName';
    label: 'Host Name';
    comment:
        'This will be the host name used in the browse to access the fiOS system. eg. "companyname.fios.com.au"';
    priority: 100;
    beRequired;
    componentClass: TBSMagritteTextInputComponent;
    yourself