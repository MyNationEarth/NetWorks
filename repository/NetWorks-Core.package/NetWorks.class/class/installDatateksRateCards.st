datateks
installDatateksRateCards
  | basePath |
  basePath := self rateCardImportBasePath.
  (NetWorks instance organisationModels at: #'datateks.com.au') rateCards
    add:
        ((NWRateCard fromRateCardCSVFileOnPath: basePath , 'Metro Combined Rates.csv')
            title: 'A417 New Devs Metro Rate Card 2018';
            startDate: Date today;
            rateCardType: #'Client';
            import);
    add:
        ((NWRateCard fromRateCardCSVFileOnPath: basePath , 'Regional Combined Rates.csv')
            title: 'A417 New Devs Regional Rate Card 2018';
            startDate: Date today;
            rateCardType: #'Client';
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'A417 Datateks Sub Contractor Rates - Metro.csv')
            title: 'A417 New Devs Subcontractor Metro Rate Card 2018';
            startDate: Date today;
            rateCardType: #'Subcontractor';
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'A417 Datateks Sub Contractor Rates - Regional.csv')
            title: 'A417 New Devs Subcontractor Regional Rate Card 2018';
            startDate: Date today;
            rateCardType: #'Subcontractor';
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'A401RFQ - 04032019 v13/Total BOQ-Table 1.csv')
            title: 'A401 Request for Quote Rate Card March 2019';
            startDate: Date today;
            rateCardType: #'Client';
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'Datateks Maximo Metro North.csv')
            title: 'Minor Works Metro North';
            startDate: Date today;
            rateCardType: #'Client';
            import);
    add:
        ((NWRateCard
            fromRateCardCSVFileOnPath:
              basePath , 'Datateks Maximo Regional South.csv')
            title: 'Minor Works Regional South';
            startDate: Date today;
            rateCardType: #'Client';
            import)