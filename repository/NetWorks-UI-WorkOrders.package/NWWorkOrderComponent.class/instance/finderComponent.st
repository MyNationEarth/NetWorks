components
finderComponent
  | finderComponent |
  (finderComponent := super finderComponent)
    addVolume:
        (ElFinderLocalFileSystem new
            id: '10';
            alias: 'Construction';
            osPath: self model job project constructionDirectory pathString;
            url:
                'http://' , finderComponent organisationModel dnsName , '/server';
            yourself);
    addVolume:
        (ElFinderLocalFileSystem new
            id: '11';
            alias: 'Safety';
            osPath: self model job project contract safetyDirectory pathString;
            url:
                'http://' , finderComponent organisationModel dnsName , '/server';
            yourself).
  ^ finderComponent