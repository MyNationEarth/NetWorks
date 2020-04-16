rendering
renderTabsOn: canvas
  canvas div
    class: 'nav-tabs-custom';
    with: [ 
          canvas tbsNav
            beTabs;
            tbsPullRight;
            with: [ 
                  self tabsToDisplay do: [ :tab | self renderTab: tab on: canvas ].
                  self renderLabelOn: canvas ].
          self errors
            ifNotNil: [ 
              canvas div
                class: 'errors';
                with: [ self errors do: [ :error | canvas paragraph: error ] ] ].
          canvas div
            class: 'tab-content';
            with: [ self perform: ('render' , selectedTab capitalized , 'On:') asSymbol with: canvas ] ]