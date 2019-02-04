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
          with: [ spec repository: 'github://MyNationEarth/BpmFlow/repository' ];
        configuration: 'Magritte3'
          with: [ 
              spec
                versionString: '3.5.2';
                repository:
                    'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main' ];
        configuration: 'Magritte3AddOns'
          with: [ 
              spec
                versionString: '3.1.3';
                repository:
                    'http://www.smalltalkhub.com/mc/Magritte/Magritte3Addons/main' ];
        configuration: 'Bootstrap'
          with: [ 
              spec
                versionString: '0.16.0';
                repository:
                    'http://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main' ];
        configuration: 'BootstrapMagritte'
          with: [ 
              spec
                versionString: '0.2.3';
                repository:
                    'http://www.smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main' ];
        baseline: 'Cryptography'
          with: [ 
              spec
                loads: #('CI');
                repository: 'github://GsDevKit/Cryptography:master/repository' ];
        configuration: 'FontAwesome'
          with: [ 
              spec
                versionString: '0.6.0';
                repository:
                    'http://www.smalltalkhub.com/mc/TorstenBergmann/FontAwesome/main' ];
        baseline: 'NeoCSV'
          with: [ 
              spec
                loads: #('Core');
                repository: 'github://glassdb/NeoCVS:master/repository' ];
        baseline: 'JQueryWidgetKit'
          with: [ spec repository: 'github://JQueryWidgetKit/JQueryWidgetKit/repository' ];
        baseline: 'AdminLTE'
          with: [ spec repository: 'github://JupiterSmalltalk/AdminLTE:seaside/repository' ].
      spec
        package: 'NetWorks-Core';
        package: 'NetWorks-Core-Tests'
          with: [ spec requires: #('NetWorks-Core') ];
        package: 'BpmFlow-UI-Core'
          with: [ spec requires: #('NetWorks-Core' 'BpmFlow') ];
        package: 'NetWorks-Model-Core'
          with: [ spec requires: #('NetWorks-Core' 'NetWorks-Model-Magritte') ];
        package: 'NetWorks-Model-Core-Tests'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Rates'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Rates-Tests'
          with: [ spec requires: #('NetWorks-Model-Rates') ];
        package: 'NetWorks-Model-Magritte';
        package: 'NetWorks-Model-Contracts'
          with: [ spec requires: #('NetWorks-Core' 'NetWorks-Model-Projects') ];
        package: 'NetWorks-Model-Contracts-Tests'
          with: [ spec requires: #('NetWorks-Model-Contracts') ];
        package: 'NetWorks-Model-Projects';
        package: 'NetWorks-Model-Projects-Tests'
          with: [ spec requires: #('NetWorks-Model-Projects') ];
        package: 'NetWorks-UI-Core'
          with: [ spec requires: #('NetWorks-Model-Contracts' 'NetWorks-UI-Magritte' 'AdminLTE') ];
        package: 'NetWorks-UI-Magritte'
          with: [ spec requires: #('NetWorks-Model-Magritte') ] ]