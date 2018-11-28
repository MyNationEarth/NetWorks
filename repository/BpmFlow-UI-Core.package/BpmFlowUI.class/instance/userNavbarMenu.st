nav bar items
userNavbarMenu
  | menu |
  menu := AdminLTEUserNavbarItem new
    icon: #'user';
    label: [ self session user displayName ];
    cssClass: 'user user-menu';
    menuHeader: [ :canvas | 
          canvas tbsImage
            beCircle;
            url:
                (self session user avatarUrl
                    ifNil: [ BpmFlowUIFileLibrary / #'imagesuserPng' ]
                    ifNotNil: [ :avatarUrl | avatarUrl ]).
          canvas
            paragraph: [ 
              canvas text: self session user displayName.
              canvas small: self session user emailAddress ] ];
    menuFooter: [ :canvas | 
          canvas
            tbsForm: [ 
              canvas div
                tbsPullLeft;
                with: [ 
                      canvas tbsButton
                        beDefault;
                        callback: [ 
                              self rootAnnouncer
                                announce:
                                  (AdminLTEPanelSelected panel: (self panelOfType: nil)) ];
                        with: 'Profile' ].
              canvas div
                tbsPullRight;
                with: [ 
                      canvas tbsButton
                        beDefault;
                        callback: [ 
                              self session
                                logout;
                                redirect ];
                        with: 'Sign Out' ] ] ];
    menuItems: nil;
    menuContent: nil;
    yourself.
  ^ menu