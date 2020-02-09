Importing
newRateCardWithDefaultCategory
  | rateCard |
  rateCard := NWRateCard new.
  rateCard rateCategories
    add:
      (NWRateCategory new
        title: 'Uncategorised Rates';
        comment:
            'Rates from impoted rate cards that do not have a defined category.';
        yourself).
  ^ rateCard