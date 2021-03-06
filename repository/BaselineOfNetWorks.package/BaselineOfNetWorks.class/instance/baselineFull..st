baseline
baselineFull: spec
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
          with: [ spec repository: 'github://brunobuzzi/BpmFlow:v3.6.7/repository' ];
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
        baseline: 'Bootstrap'
          with: [ spec repository: 'github://astares/Seaside-Bootstrap:0.18.0/src' ];
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
        baseline: 'Mustache'
          with: [ 
              spec
                loads: #('Core');
                repository: 'github://noha/mustache:master/repository' ];
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
        package: 'NetWorks-Model-Jobs'
          with: [ spec requires: #('NetWorks-Model-Projects' 'NetWorks-Model-WorkOrders') ];
        package: 'NetWorks-Model-WorkOrders' with: [ spec requires: #() ];
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
                  #('NetWorks-UI-FileLibraries' 'NetWorks-UI-Magritte' 'NetWorks-UI-Announcements' 'FontAwesome' 'AdminLTE' 'NetWorks-Model-Contractors' 'NetWorks-Model-Materials' 'NetWorks-Model-Projects') ];
        package: 'NetWorks-UI-FileLibraries';
        package: 'NetWorks-UI-Magritte'
          with: [ spec requires: #('NetWorks-Model-Magritte') ];
        package: 'NetWorks-UI-Rates'
          with: [ spec requires: #('NetWorks-Model-Rates' 'NetWorks-UI-Core') ];
        package: 'NetWorks-UI-Announcements';
        package: 'NetWorks-UI-Dashboard'
          with: [ spec requires: #('NetWorks-UI-Core') ];
        package: 'NetWorks-UI-Clients'
          with: [ spec requires: #('NetWorks-Model-Clients' 'NetWorks-UI-Core') ];
        package: 'NetWorks-UI-Contracts'
          with: [ spec requires: #('NetWorks-Model-Contracts' 'NetWorks-UI-Core') ];
        package: 'NetWorks-UI-Projects'
          with: [ 
              spec
                requires:
                  #('NetWorks-Model-Projects' 'NetWorks-UI-Contracts' 'NetWorks-UI-Rates' 'NetWorks-UI-Clients') ];
        package: 'NetWorks-UI-Jobs'
          with: [ 
              spec
                requires:
                  #('NetWorks-Model-Jobs' 'NetWorks-UI-Projects' 'NetWorks-UI-WorkOrders') ];
        package: 'NetWorks-UI-WorkOrders'
          with: [ spec requires: #('NetWorks-Model-WorkOrders') ];
        package: 'NetWorks-UI-Contractors'
          with: [ spec requires: #('NetWorks-Model-Contractors') ];
        package: 'NetWorks-UI-Materials'
          with: [ spec requires: #('NetWorks-Model-Materials') ] ]