rendering
renderBasicsOn: canvas
  canvas heading
    level3;
    with: 'Details'.
  self renderBasicsDetailsOn: canvas.
  canvas heading
    level3;
    with: 'Location'.
  self renderLocationOn: canvas.
  canvas heading
    level3;
    with: 'Financials'.
  self renderFinancialsOn: canvas.
  canvas heading
    level3;
    with: 'Contacts'.
  self renderContactsOn: canvas