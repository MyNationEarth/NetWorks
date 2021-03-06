Importing
newRateCardWithDefaultCategory
  | rateCard |
  rateCard := NWRateCard new.
  rateCard rateCardType: #'Client'.
  rateCard rateCategories
    add:
      (NWRateCategory new
        title: 'Uncategorised Rates';
        comment:
            'Rates from impoted rate cards that do not have a defined category.';
        rateCard: rateCard;
        yourself).
  ^ rateCard