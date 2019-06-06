rendering
renderEditorForUngroupedOn: html
  | searchInput searchResultId |
  searchResultId := html nextId.
  html paragraph
    class: 'form-control-static';
    with: [ 
          html label
            for: html nextId;
            with: self string ].
  searchInput := html searchInput tbsFormControl.
  description cssClasses do: [ :cls | searchInput class: cls ].
  searchInput
    id: html lastId;
    style: 'color: black;';
    placeholder: 'Search…';
    onKeyPress: (JSStream on: 'if(event.which=="13"){event.preventDefault()}');
    script:
        (html jQuery this autocomplete
            autoFocus: true;
            minLength: 0;
            delay: 500;
            onSearch:
                (html jQuery ajax
                    callback: [ :value | searchText := value ]
                      json: (JSStream on: 'this.value');
                    script: [ :script | 
                          | searchResults |
                          searchResults := self magritteDescription options
                            select: [ :option | 
                              ((option readUsing: self magritteDescription reference children first)
                                findStringNoCase: searchText
                                startingAt: 1) > 0 ].
                          script << (script jQuery id: searchResultId)
                            html: [ :html | 
                              searchResults notEmpty
                                ifTrue: [ 
                                  (searchResults copyFrom: 1 to: (10 min: searchResults size))
                                    do: [ :searchResult | 
                                      html paragraph
                                        with: [ 
                                          html anchor
                                            callback: [ self value: searchResult ];
                                            with:
                                                (searchResult readUsing: self magritteDescription reference children first) ] ] ]	"script << (html javascript return: false)" ] ])).
  html div
    id: searchResultId;
    style: 'position: relative; z-index: 9999;'