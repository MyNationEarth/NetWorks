rendering
elFinderScriptOn: canvas
  | elFinderScript volumeGroup |
  elFinderScript := canvas jQuery this elFinder
    defaultIconsView;
    cssClass: 'elFinder';
    language: 'en';
    debug: true;
    loadThumbnails: 5;
    yourself.
  self
    elFinderScript: elFinderScript commandsConfigurationOn: canvas;
    elFinderScript: elFinderScript connectorConfigurationOn: canvas.
  ^ elFinderScript