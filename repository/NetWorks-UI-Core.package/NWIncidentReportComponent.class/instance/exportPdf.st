actions
exportPdf
  self
    show:
      (self pdfComponent
        incidentReport: self model;
        yourself)