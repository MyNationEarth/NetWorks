baseline
baselineQuickLoad: spec
  spec
    for: #'common'
    do: [ 
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
          with: [ spec requires: #('NetWorks-Core' 'NetWorks-UI-Core') ];
        package: 'NetWorks-UI-Core'
          with: [ 
              spec
                requires:
                  #('NetWorks-UI-FileLibraries' 'NetWorks-UI-Magritte' 'NetWorks-UI-Announcements' 'NetWorks-Model-Contractors' 'NetWorks-Model-Materials' 'NetWorks-Model-Projects') ];
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