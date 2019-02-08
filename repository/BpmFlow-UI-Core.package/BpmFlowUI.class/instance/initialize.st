initialization
initialize
  super initialize.
  self initializePanels.
  self session user: nil.
  self addNavbarItem: self userNavbarMenu