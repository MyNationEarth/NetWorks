rendering
renderSearchOn: canvas
  canvas span
    class: 'reportSearch';
    with: [ 
          (canvas tag: 'i')
            fontAwesome;
            fontAwesomeSearchIcon.
          canvas space.
          canvas searchInput
            style: 'color: black;width:90%;';
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
                                  self report
                                    rowFilter: [ :row | 
                                      searchText isEmpty
                                        or: [ (row searchString findStringNoCase: searchText startingAt: 1) > 0 ] ].
                                  script
                                    << (script jQuery id: self report ajaxId)
                                    html: [ :html | 
                                      html
                                        render:
                                          (self report
                                            batchPage: 1;
                                            yourself) ] ])
                            , (canvas javascript return: false)) ]