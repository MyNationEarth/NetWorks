datateks
installDatateksWarehouses
  (NetWorks instance organisationModels at: #'datateks.com.au') materialStores
    add:
        (NWMaterialStore new
            title: 'Datateks - Sydney';
            locationSuburb: 'Michinbury';
            locationState: 'NSW';
            yourself);
    add:
        (NWMaterialStore new
            title: 'Datateks - Canberra';
            locationSuburb: '';
            locationState: 'ACT';
            yourself)