magritte overrides
refresh
  self
    cache: nil;
    batchPage: 1.
  self columns do: [ :each | each refresh ]