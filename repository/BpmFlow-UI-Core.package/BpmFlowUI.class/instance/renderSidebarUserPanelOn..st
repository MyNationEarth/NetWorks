rendering
renderSidebarUserPanelOn: canvas
  canvas div
    tbsPullLeft;
    class: 'image';
    with: [ 
          canvas tbsImage
            beCircle;
            url:
                (self session user avatarUrl
                    ifNil: [ BpmFlowUIFileLibrary / #'imagesuserPng' ]
                    ifNotNil: [ :avatarUrl | avatarUrl ]) ].
  canvas div
    tbsPullLeft;
    class: 'info';
    with: [ 
          canvas paragraph: self userName.
          canvas anchor
            with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeCircleIcon;
                class: 'text-success'.
              canvas text: ' Online' ] ]