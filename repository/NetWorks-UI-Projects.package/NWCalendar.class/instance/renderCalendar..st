rendering
renderCalendar: html
  false
    ifTrue: [ self renderCalendarVersion51: html ]
    ifFalse: [ self renderCalendar2: html ]