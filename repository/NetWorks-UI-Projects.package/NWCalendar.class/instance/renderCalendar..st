rendering
renderCalendar: html
  true
    ifTrue: [ self renderCalendarVersion51: html ]
    ifFalse: [ self renderCalendar2: html ]