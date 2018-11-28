datateks
installDatateksRateCards
  | basePath |
  basePath := '/opt/git/MyNationEarth/NetWorks/documents/Datateks/rateCards/'.
  (NetWorks instance organisationModels at: #'Datateks') rateCards
    add:
        ((NWRateCard fromRateCardCSVFileOnPath: basePath , 'Metro Combined Rates.csv')
            title: 'A417 New Devs Metro Rate Card 2018';
            startDate: Date today;
            import);
    add:
        ((NWRateCard fromRateCardCSVFileOnPath: basePath , 'Regional Combined Rates.csv')
            title: 'A417 New Devs Regional Rate Card 2018';
            startDate: Date today;
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'A417 Datateks Sub Contractor Rates - Metro.csv')
            title: 'A417 New Devs Subcontractor Metro Rate Card 2018';
            startDate: Date today;
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'A417 Datateks Sub Contractor Rates - Regional.csv')
            title: 'A417 New Devs Subcontractor Regional Rate Card 2018';
            startDate: Date today;
            import)