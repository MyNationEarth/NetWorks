components
pdfComponent
  ^ self
    componentAt: #'pdfDocument'
    ifAbsentPut: [ 
      (NWIncidentReportPDF
        memento:
          (self model mementoClass model: self model description: self pdfDescription))
        incidentReport: self model;
        yourself ]