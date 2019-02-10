datateks
installDatateksClients
  (NetWorks instance organisationModels at: #'Datateks') clients
    add:
        (NWClient new
            title: 'NBN Co';
            yourself);
    add:
        (NWClient new
            title: 'PipeNetworks';
            yourself);
    add:
        (NWClient new
            title: 'Mikcomm';
            yourself)