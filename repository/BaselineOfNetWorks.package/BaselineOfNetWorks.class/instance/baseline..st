baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Seaside3'
          with: [ 
              spec
                loads: #('Core' 'Development' 'Zinc' 'CI');
                repository: 'github://SeasideSt/Seaside:master/repository' ];
        baseline: 'HighchartsSt'
          with: [ spec repository: 'filetree:///opt/git/brunobuzzi/HighchartsSt/repository' ];
        baseline: 'AbstractApplicationObjects'
          with: [ 
              spec
                repository:
                  'github://brunobuzzi/AbstractApplicationObjects:master/repository' ];
        baseline: 'Sewaf'
          with: [ spec repository: 'github://brunobuzzi/SEWAF:master/repository' ];
        baseline: 'OrbeonPersistenceLayer'
          with: [ spec repository: 'github://brunobuzzi/OrbeonPersistenceLayer:master/repository' ];
        baseline: 'BpmFlow'
          with: [ spec repository: 'github://MyNationEarth/BpmFlow:master/repository' ].
      spec
        package: 'NetWorks-Core';
        package: 'NetWorks-Core-Tests' ]