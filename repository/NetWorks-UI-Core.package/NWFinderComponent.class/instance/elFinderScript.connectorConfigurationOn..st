rendering
elFinderScript: elFinderScript connectorConfigurationOn: canvas
  | volumeGroup |
  elFinderScript connector
    debug: true;
    uploadTempPath: self organisationModel tempUploadDirectory pathString;
    addRoot:
        (volumeGroup := ElFinderVolumeGroup new
            id: '1';
            alias: (volumeGroupName ifNil: [ self organisationModel ecmName ]);
            yourself);
    addRoot: (volumeGroup addVolume: self defaultVolume).
  self volumes
    do: [ :volume | elFinderScript connector addRoot: (volumeGroup addVolume: volume) ]