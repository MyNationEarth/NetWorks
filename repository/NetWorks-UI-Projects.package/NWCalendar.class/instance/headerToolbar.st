accessing
headerToolbar
  | head |
  head := Dictionary new.
  head at: 'left' put: 'prev,today,next'.
  head at: 'center' put: 'title'.
  head at: 'right' put: 'listWeek dayGridMonth,timeGridWeek,timeGridDay'.
  ^ head