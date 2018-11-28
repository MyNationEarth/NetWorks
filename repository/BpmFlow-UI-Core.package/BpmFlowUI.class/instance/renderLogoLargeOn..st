rendering
renderLogoLargeOn: canvas
  self organisationModel logoLarge
    ifNil: [ 
      canvas
        strong: 'Admin';
        text: 'LTE' ]
    ifNotNil: [ :logoUrl | 
      canvas image
        style: 'width: 85%';
        url: logoUrl ]