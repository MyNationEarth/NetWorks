components
photosBeforeComponent
  self ensureFileSystem.
  ^ self
    componentAt: #'finder-photosBefore'
    ifAbsentPut: [ 
      NWMinimalFinderComponent new
        volumeGroupName: (self model readUsing: self model titleDescription);
        baseDirectoryAlias: [ 'Photos Before' ];
        baseDirectory: [ self model beforeDirectory ];
        yourself ]