rateCards
defaultInternalRateCard
  | rateCard category |
  rateCard := NWRateCard new
    rateCardType: #'Client';
    title: 'Internal Rate Card';
    yourself.
  category := NWRateCategory new
    title: 'Uncategorised Rates';
    rateCard: rateCard;
    yourself.
  rateCard rateCategories add: category.
  category rates
    add:
        (NWRate new
            title: 'FI-01-01-01';
            sorCode: 'FI-01-01-01';
            comment: 'Technician';
            rateCategory: category;
            yourself);
    add:
        (NWRate new
            title: 'FI-01-01-02';
            sorCode: 'FI-01-01-02';
            comment: 'Labourer';
            rateCategory: category;
            yourself);
    add:
        (NWRate new
            title: 'FI-01-02-01';
            sorCode: 'FI-01-02-01';
            comment: 'Materials';
            rateCategory: category;
            yourself);
    add:
        (NWRate new
            title: 'FI-01-03-01';
            sorCode: 'FI-01-03-01';
            comment: 'Quote';
            rateCategory: category;
            yourself);
    add:
        (NWRate new
            title: 'FI-01-04-01';
            sorCode: 'FI-01-04-01';
            comment: 'Travel';
            rateCategory: category;
            yourself).
  ^ rateCard deepCopy