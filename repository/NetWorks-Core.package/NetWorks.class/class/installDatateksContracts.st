datateks
installDatateksContracts
  | clientNBN contracts |
  clientNBN := (NetWorks instance organisationModels at: #'datateks.com.au')
    clients detect: [ :client | client title = 'NBN Co' ].
  contracts := (NetWorks instance organisationModels at: #'datateks.com.au')
    contracts.
  contracts
    add:
        (NWContract new
            bpmApplication: (OrbeonApplication applicationNamed: 'a417NewDevs');
            title: 'A417 New Devs';
            client: clientNBN;
            yourself);
    add:
        (NWContract new
            bpmApplication:
                (OrbeonApplication applicationNamed: 'a401RequestForQuote');
            title: 'A401 Request for Quote';
            client: clientNBN;
            yourself);
    add:
        (NWContract new
            bpmApplication: (OrbeonApplication applicationNamed: 'nbnAssurance');
            title: 'NBN Assurance';
            client: clientNBN;
            yourself).
  clientNBN contracts addAll: contracts