components
pdfComponent
  ^ self componentAt: #'pdfDocument' ifAbsentPut: [ NWIncidentReportPDF new ]