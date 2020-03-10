initialization
initialize
  super initialize.
  components := Dictionary new.
  selectedTab := self tabsToDisplay last at: #'id'