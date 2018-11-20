initialization
initialize
  super initialize.
  self session user: nil.
  self addNavbarItem: self userNavbarMenu