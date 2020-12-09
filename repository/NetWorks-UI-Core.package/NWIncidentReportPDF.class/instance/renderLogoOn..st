rendering
renderLogoOn: canvas
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ canvas image url: self organisationModel logoLarge ] ]