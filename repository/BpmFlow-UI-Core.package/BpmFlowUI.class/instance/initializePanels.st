initialization
initializePanels
  self
    addPanel: (NWDashboardPanel parent: self);
    addPanel: (NWProjectsPanel parent: self);
    addPanel: (NWClientsPanel parent: self);
    addPanel: (NWContractorsPanel parent: self);
    addPanel: (NWContractsPanel parent: self);
    addPanel: (NWRateCardsPanel parent: self)