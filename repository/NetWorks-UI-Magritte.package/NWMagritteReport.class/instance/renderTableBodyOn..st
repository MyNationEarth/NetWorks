rendering
renderTableBodyOn: html
  | editCommand |
  "If there is an edit: command then use that command to create a row link"
  editCommand := (self visibleColumns
    select: [ :c | c isKindOf: MACommandColumn ])
    ifEmpty: [ nil ]
    ifNotEmpty: [ :result | 
      result first commands
        detect: [ :command | command value first = 'edit' ]
        ifNone: [ nil ] ].
  self visible isEmpty
    ifTrue: [ 
      html tableRow
        class: 'empty';
        with: [ 
              html tableData
                colSpan: self visibleColumns size;
                with: self tableEmpty ] ]
    ifFalse: [ 
      self visible
        keysAndValuesDo: [ :index :row | 
          | tableRow |
          tableRow := html tableRow.
          editCommand
            ifNotNil: [ 
              tableRow
                onClick:
                  html javascript << 'window.location.href=' , ''''
                    ,
                      (html jQuery ajax
                        callback: [ editCommand key value: row ];
                        fullUrl) asString
                    , '''' ].
          tableRow
            class: (self rowStyleForNumber: index);
            with: [ self visibleColumns do: [ :col | col renderCell: row index: index on: html ] ] ] ]