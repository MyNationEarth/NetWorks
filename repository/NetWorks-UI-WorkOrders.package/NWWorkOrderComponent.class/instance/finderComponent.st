components
finderComponent
  | finderComponent |
  (finderComponent := super finderComponent)
    addVolume:
        (ElFinderLocalFileSystem new
            id: '10';
            alias: 'Construction';
            canWrite: false;
            locked: true;
            osPath: self model job project constructionDirectory pathString;
            url:
                'http://' , finderComponent organisationModel dnsName , '/server';
            yourself);
    addVolume:
        (ElFinderLocalFileSystem new
            id: '11';
            alias: 'Safety';
            canWrite: false;
            locked: true;
            osPath: self model job project contract safetyDirectory pathString;
            url:
                'http://' , finderComponent organisationModel dnsName , '/server';
            yourself).
  ^ finderComponent