rendering
renderContentOn: canvas
  canvas anchor
    class: 'btn btn-default';
    onClick: (canvas jQuery event: 'click') preventDefault;
    callback: [ self session presenter show: self pdfComponent ];
    with: 'Printable Version'.
  super renderContentOn: canvas