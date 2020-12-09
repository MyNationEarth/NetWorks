rendering
renderContentOn: canvas
  canvas anchor
    class: 'btn btn-default';
    style: '@media print {visibility: hidden}';
    onClick: canvas javascript << 'window.close()';
    callback: [ self answer ];
    with: 'Close'.
  canvas div
    style: 'margin:72px';
    with: [ 
          self renderLogoOn: canvas.
          self renderBasicsOn: canvas.
          self renderOfficeOn: canvas ]