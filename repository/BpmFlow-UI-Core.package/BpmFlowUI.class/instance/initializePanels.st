initialization
initializePanels
  self
    addPanel: (NWDashboardPanel parent: self);
    addPanel: (NWOpenProjectsPanel parent: self);
    addPanel: (NWProjectsPanel parent: self);
    addPanel: (NWDefectsPanel parent: self);
    addPanel: (NWClientsPanel parent: self);
    addPanel: (NWContractorsPanel parent: self);
    addPanel: (NWContractsPanel parent: self);
    addPanel: (NWRateCardsPanel parent: self);
    addPanel: (NWMaterialsPanel parent: self);
    addPanel: (NWMaterialStorePanel parent: self);
    addPanel: (NWPayrollPanel parent: self);
    addPanel: (NWWorkOrdersPanel parent: self)