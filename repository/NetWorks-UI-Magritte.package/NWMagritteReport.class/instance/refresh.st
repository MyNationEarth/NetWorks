magritte overrides
refresh
  self cache: nil.
  self columns do: [ :each | each refresh ]