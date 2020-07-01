rendering
renderCalendarVersion51: html
  self events removeAllSuchThat: [ :ea | ea isNil ].
  html div
    id: 'calendar';
    script:
        (html jQuery this fullCalendar
            initialView: 'dayGridMonth';
            eventsJsonGet: [ :start :end | self calendarEventsFromStartDate: start to: end ];
            yourself)