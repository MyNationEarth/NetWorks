initialization
initialize
  super initialize.
  hasSearch := false.
  selectAllNoneToggle := false.
  selectToggleText := 'Select All'.
  searchText := ''.
  filters := OrderedCollection new.
  announcer := Announcer new