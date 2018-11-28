rendering
renderLogoMiniOn: canvas
  self organisationModel logoSmall
    ifNil: [ 
      canvas
        strong: 'A';
        text: 'LT' ]
    ifNotNil: [ :logoUrl | 
      canvas image
        style: 'width: 100%';
        url: logoUrl ]