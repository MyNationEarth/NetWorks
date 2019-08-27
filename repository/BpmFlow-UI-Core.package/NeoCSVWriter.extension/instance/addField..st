*BpmFlow-UI-Core
addField: accessor
  "WARNING: OVERRIDEN BY BPMFLOW UI TO REPLACE nil WITH EMPTY STRING.
    WARNAdd a field based on an accessor to be written using fieldWriter.
	Accessor can be a Symbol or a Block"

  self
    addFieldAccessor: [ :object | self writeField: ((accessor value: object) ifNil: [ '' ]) ]