initialization
initializePanels
  self
    addPanel: (NWDashboardPanel parent: self);
    addPanel: (NWClientsPanel parent: self);
    addPanel: (NWRateCardsPanel parent: self)