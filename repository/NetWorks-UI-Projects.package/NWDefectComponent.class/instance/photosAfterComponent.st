components
photosAfterComponent
  self ensureFileSystem.
  ^ self
    componentAt: #'finder-photosAfter'
    ifAbsentPut: [ 
      NWMinimalFinderComponent new
        volumeGroupName: (self model readUsing: self model titleDescription);
        baseDirectoryAlias: [ 'Photos-After' ];
        baseDirectory: [ self model afterDirectory ];
        yourself ]