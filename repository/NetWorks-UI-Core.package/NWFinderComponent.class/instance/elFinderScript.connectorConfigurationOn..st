rendering
elFinderScript: elFinderScript connectorConfigurationOn: canvas
  | volumeGroup |
  elFinderScript connector
    uploadTempPath: self organisationModel tempUploadDirectory pathString;
    addRoot:
        (volumeGroup := ElFinderVolumeGroup new
            id: '1';
            alias: (volumeGroupName ifNil: [ self organisationModel ecmName ]);
            yourself);
    addRoot:
        (volumeGroup
            addVolume:
              (ElFinderLocalFileSystem new
                id: '2';
                alias: self baseDirectoryAlias;
                osPath: self baseDirectory pathString;
                url: 'http://' , self organisationModel dnsName , '/server';
                yourself));
    debug: true