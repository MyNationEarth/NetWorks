Importing
locationMapping
  "Answer the financial spreadsheet location field to database location field map"

  ^ Dictionary new
    at: 'Sydney' put: 'Sydney';
    at: 'Sth NSW' put: 'Southern NSW';
    at: 'Sth Coast' put: 'South Coast NSW';
    at: 'Central West' put: 'Central West NSW';
    at: 'NSW' put: 'West NSW';
    at: 'Nth Coast' put: 'North Coast NSW';
    at: 'ACT' put: 'ACT';
    at: 'Newcastle' put: 'Newcastle';
    at: 'Hunter' put: 'Hunter';
    yourself