initialization
initialize
  super initialize.
  self
    max: Date today + 1000 days;
    min: Date today - 5000 days