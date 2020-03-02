accessing
eventEditor
  ^ self componentAt: #'eventEditor' ifAbsentPut: [ NWCalendarEventEditor new ]