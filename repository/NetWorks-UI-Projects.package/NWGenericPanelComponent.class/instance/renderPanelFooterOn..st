rendering
renderPanelFooterOn: canvas
  canvas div
    with: [ 
      canvas span
        class: 'filters';
        with: [ 
              self selectAllNoneToggle
                ifTrue: [ 
                  canvas tbsButton
                    bePush;
                    beExtraSmall;
                    onClick:
                        (canvas jQuery ajax
                            script: [ :script | 
                              self reportComponent selectedItems = self displayItems
                                ifTrue: [ 
                                  selectToggleText := 'Select All'.
                                  self reportComponent
                                    selectedItems: OrderedCollection new ]
                                ifFalse: [ 
                                  selectToggleText := 'Select None'.
                                  self reportComponent
                                    selectedItems: self displayItems ].
                              script << (script jQuery class: self wrapperClass)
                                html: [ :html | self renderContentOn: html ] ]);
                    with: [ 
                          canvas span fontAwesome
                            with: [ 
                              canvas span fontAwesomeListIcon.
                              canvas
                                space;
                                text: selectToggleText ] ] ].
              canvas space ].
      canvas
        span:
          (String
            streamContents: [ :stream | 
              stream
                nextPutAll: 'Displaying ';
                nextPutAll: self displayItems size asString;
                nextPutAll: ' of ';
                nextPutAll: self items size asString.
              self reportComponent selectedItems
                ifNotEmpty: [ :selectedItems | 
                  stream
                    nextPutAll: ' (';
                    nextPutAll: selectedItems size asString;
                    nextPutAll: ' selected) ' ] ]) ]