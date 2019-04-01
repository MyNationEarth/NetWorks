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
                versionString: '0.18.0';
                repository: 'github://astares/Seaside-Bootstrap:master/src' ];
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
        package: 'NetWorks-Model-Core'
          with: [ spec requires: #('NetWorks-Core' 'NetWorks-Model-Magritte') ];
        package: 'NetWorks-Model-Core-Tests'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Rates'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Rates-Tests'
          with: [ spec requires: #('NetWorks-Model-Rates') ];
        package: 'NetWorks-Model-Magritte';
        package: 'NetWorks-Model-Clients'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Clients-Tests';
        package: 'NetWorks-Model-Contracts'
          with: [ 
              spec
                requires:
                  #('NetWorks-Core' 'NetWorks-Model-Clients' 'NetWorks-Model-Projects') ];
        package: 'NetWorks-Model-Contracts-Tests'
          with: [ spec requires: #('NetWorks-Model-Contracts') ];
        package: 'NetWorks-Model-Projects'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Projects-Tests'
          with: [ spec requires: #('NetWorks-Model-Projects') ];
        package: 'NetWorks-Model-Contractors'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'NetWorks-Model-Contractors-Tests';
        package: 'NetWorks-Model-Materials'
          with: [ spec requires: #('NetWorks-Model-Core') ];
        package: 'BpmFlow-UI-Core'
          with: [ spec requires: #('NetWorks-Core' 'NetWorks-UI-Core' 'BpmFlow') ];
        package: 'NetWorks-UI-Core'
          with: [ 
              spec
                requires:
                  #('NetWorks-UI-FileLibraries' 'NetWorks-UI-Magritte' 'NetWorks-UI-Announcements' 'FontAwesome' 'AdminLTE' 'NetWorks-UI-Dashboard' 'NetWorks-Model-Clients' 'NetWorks-Model-Contractors' 'NetWorks-Model-Materials' 'NetWorks-Model-Projects' 'NetWorks-UI-Rates' 'NetWorks-UI-Contracts') ];
        package: 'NetWorks-UI-FileLibraries';
        package: 'NetWorks-UI-Magritte'
          with: [ spec requires: #('NetWorks-Model-Magritte') ];
        package: 'NetWorks-UI-Rates'
          with: [ spec requires: #('NetWorks-Model-Rates') ];
        package: 'NetWorks-UI-Announcements';
        package: 'NetWorks-UI-Dashboard';
        package: 'NetWorks-UI-Clients'
          with: [ spec requires: #('NetWorks-Model-Clients') ];
        package: 'NetWorks-UI-Contracts'
          with: [ spec requires: #('NetWorks-Model-Contracts') ];
        package: 'NetWorks-UI-Projects'
          with: [ 
              spec
                requires:
                  #('NetWorks-Model-Projects' 'NetWorks-UI-Contracts' 'NetWorks-UI-Rates' 'NetWorks-UI-Clients') ];
        package: 'NetWorks-UI-Contractors'
          with: [ spec requires: #('NetWorks-Model-Contractors') ];
        package: 'NetWorks-UI-Materials'
          with: [ spec requires: #('NetWorks-Model-Materials') ] ]