rendering
renderSearchOn: canvas
  hasSearch
    ifTrue: [ 
      canvas span
        class: 'search';
        with: [ 
              (canvas tag: 'i')
                fontAwesome;
                fontAwesomeSearchIcon.
              canvas space.
              canvas searchInput
                style: 'color: black;';
                value: searchText;
                placeholder: 'Search…';
                onKeyPress:
                    (JSStream on: 'if(event.which=="13"){event.preventDefault()}');
                script:
                    (canvas jQuery this autocomplete
                        autoFocus: true;
                        minLength: 0;
                        delay: 500;
                        onSearch:
                            (canvas jQuery ajax
                                callback: [ :value | searchText := value ]
                                  json: (JSStream on: 'this.value');
                                script: [ :script | 
                                      self updateItems: items.
                                      script
                                        <<
                                          ((script jQuery class: self wrapperClass) find: '.box-body') first
                                        html: [ :html | self renderPanelBodyOn: html ] ])
                                , (canvas javascript return: false)) ] ]