components
insurancesComponent
  self ensureFileSystem.
  ^ self
    componentAt: #'insurances'
    ifAbsentPut: [ 
      NWMinimalFinderComponent new
        volumeGroupName: (self model readUsing: self model titleDescription);
        baseDirectoryAlias: [ 'Insurances' ];
        baseDirectory: [ self model insurancesDirectory ];
        yourself ]