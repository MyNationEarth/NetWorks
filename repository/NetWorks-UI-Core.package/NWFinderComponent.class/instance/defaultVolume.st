updating
defaultVolume
  ^ ElFinderLocalFileSystem new
    id: '2';
    alias: self baseDirectoryAlias;
    osPath: self baseDirectory pathString;
    url: 'http://' , self organisationModel dnsName , '/server';
    locked: true;
    yourself